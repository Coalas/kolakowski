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


</body>
</html>
