<?php
/* 
	Flash Video Model File for uploading Video Files and convert it to flv extension
	By Firnas Nadirman	
*/
class FlashVideo extends File {

	public static $thumbnail_width = 114;

	public static $thumbnail_height = 87;

	public static $cms_thumbnail_width = 100;

	public static $cms_thumbnail_height = 60;
	
	public $allowedExtensions = array("mov","mp4","avi","flv","mpeg","mpg");	
	
	public $flvplayer = "FlashVideo/swf/player.swf";
		
	function getOriginalFileURL() {
		return Director::baseURL() . $this->FileName;
	}
	
	function getURL() {
		if (!file_exists($this->getFlvFilePath())){
			$this->generateFlv();
		}
		
		return Director::baseURL().$this->getFlvFileName();
	}
	
	function URL() {
		return $this->getURL();
	}
	
	function forTemplate(){
		if(!file_exists($this->getCMSThumbFilePath())) {
			$this->getThumbnail($this->stat("cms_thumbnail_width"), $this->stat("cms_thumbnail_height"), $this->getCMSThumbFilePath());
		}
		return "<embed width=\"400\" height=\"300\" flashvars=\"file=".$this->getURL()."&amp;image=".$this->getCMSThumbFileName()."\" allowscriptaccess=\"always\" allowfullscreen=\"true\" quality=\"high\" bgcolor=\"#FFFFFF\" name=\"player\" id=\"player\" style=\"\" src=\"$this->flvplayer\" type=\"application/x-shockwave-flash\">";
	}
	
	
	function getThumbFileName(){
		return VIDEO_DIR."/_thumbnail/thumb_".strtolower($this->Name).".png";
	}
	
	function getThumbFilePath(){
		return VIDEO_PATH."/_thumbnail/thumb_".strtolower($this->Name).".png";
	}

	function getCMSThumbFileName(){
		return VIDEO_DIR."/_thumbnail/CMSthumb_".strtolower($this->Name).".png";
	}
	
	function getCMSThumbFilePath(){
		return VIDEO_PATH."/_thumbnail/CMSthumb_".strtolower($this->Name).".png";
	}
	
	public function CMSThumbnail() {
		return $this->generateCMSThumbnail();
	}

	public function getImage() {
		return $this->generateThumbnail();
	}


	function generateThumbnail(){
		if(!file_exists($this->getThumbFilePath())) {
			$this->getThumbnail($this->stat("thumbnail_width"), $this->stat("thumbnail_height"), $this->getThumbFilePath());
		}
		return "<img src=\"".$this->getThumbFileName()."\" title=\"".$this->Title."\">";
	}


	function generateCMSThumbnail() {
		if(!file_exists($this->getCMSThumbFilePath())) {
			$this->getThumbnail($this->stat("cms_thumbnail_width"), $this->stat("cms_thumbnail_height"), $this->getCMSThumbFilePath());
		}
		
		return "<div style=\"text-align:center;width: 100px;\"><a target=\"_blank\" href=\"$this->URL\" title=\"Download: $this->URL\"><img src=\"".$this->getCMSThumbFileName()."\" alt=\"".$this->getCMSThumbFileName()."\" /></a><br /><br /><a style=\"color: #0074C6;\"target=\"_blank\" href=\"$this->URL\" title=\"Download: $this->URL\">Download</a></div>";
	}
	
	function getThumbnail($width, $height, $filedest){
		$videoFile = BASE_PATH."/".$this->Filename;
		if(file_exists($videoFile)){
			$execthumb = FFMPEG_BIN." -i ".$videoFile." -r 1 -s ".$width."x".$height." -f image2pipe -vframes 1 -ss 00:00:01 ".$filedest;
			exec($execthumb);
		}
	}
	
	function getFlvFileName(){
		return VIDEO_DIR."/_resampled/"."flv_".strtolower($this->Name).".flv";
	}
	
	function getFlvFilePath(){
		return VIDEO_PATH."/_resampled/flv_".strtolower($this->Name).".flv";
	}
		
	function generateFlv(){
		$videoFile = BASE_PATH."/".$this->Filename;
		$execvid =	FFMPEG_BIN." -i ".$videoFile." -r 16 -ar 11025 -ab 32k -s cga -qscale 10 -y ".$this->getFlvFilePath();
		exec($execvid);
	}
		
}
?>