<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(form) %> 
		<% require themedCSS(style) %> 
		<% require themedCSS(grid) %> 
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/apsilesia/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
<div class="row">
	<header>
        <div class="logo col_16 col">
        <div id="logopis"><img src="$ThemeDir/images/pis.png"/></div>
        <div id="kolakowski"><img src="$ThemeDir/images/kolak.png"/></div>
        <div class="left" id="banner" style="height: 252px; width: 689px; margin-left:90px;" >
        <img  src="$ThemeDir/images/kolakowski3_03.jpg"/><img  src="$ThemeDir/images/kolakowski3_03b.jpg"/>
        <img  src="$ThemeDir/images/kolakowski3_03c.jpg"/><img  src="$ThemeDir/images/kolakowski3_03d.jpg"/><img  src="$ThemeDir/images/kolakowski2_04b.jpg"/>
        </div>
        <img class="right" src="$ThemeDir/images/kolakowski3_05.jpg"/>
        </div><!-- logo col_7 -->
        <div class="clear"></div>
        <div class="Menu col_16 col">
   <% include Navigation %>
		<div id="podpis" class="col_6 right"><img class="right" src="$ThemeDir/images/kolakowski3_08.jpg"></img></div>
</div>
     
      <div class="clear"></div><!-- clear -->
    </header>
</div><!-- row -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
$Layout
<div id="bar" class="row"></div>
<% include Footer %>	
<div id="theModal" class="reveal-modal" style="width:650px;">

<object style="height: 390px; width: 640px">
<param name="movie" value="http://www.youtube.com/v/v-EnoXZmX9A?version=3">
<param name="allowFullScreen" value="true">
<param name="allowScriptAccess" value="always">
<embed id="playerid" name="playerid" src="http://www.youtube.com/v/v-EnoXZmX9A?enablejsapi=1&version=3&playerapiid=ytplayer" type="application/x-shockwave-flash" allowfullscreen="true" allowScriptAccess="always" width="640" height="390">
</object>
    <a class="close-reveal-modal">&#215;</a>
</div>

</body>
</html>
