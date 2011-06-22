<?php 
/* 
	Flash Video config for uploading Video Files and convert it to flv extension
	By Firnas Nadirman	
	Requirements : FFMPEG
*/

	
	/*
		Where is ffmpeg binary file? FFMPEG_BIN is path to ffmpeg binary. default to /usr/local/bin/ffmpeg
	*/
	define('FFMPEG_BIN',"/usr/local/bin/ffmpeg");
	
	/*
		Where is the video file to be put. 
	*/
		$dir = "video"; 
	
	/*
		Don't change code bellow if you dont know what you're doing!!
	*/
	define('VIDEO_PATH', ASSETS_PATH."/".$dir);
	define("VIDEO_DIR", ASSETS_DIR."/".$dir);

	if (!file_exists(VIDEO_PATH)){
		@mkdir(VIDEO_PATH);
		@mkdir(VIDEO_PATH."/_resampled");
		@mkdir(VIDEO_PATH."/_thumbnail");
	}
?>