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
        <div id="kolakowski"><img src="$ThemeDir/images/kolakowski.png"/></div>
        <img class="left" src="$ThemeDir/images/kolakowski2_03.jpg"/><div class="left" id="banner" style="height: 252px; width: 671px;" ><img  src="$ThemeDir/images/kolakowski2_04.jpg"/>
        <img  src="$ThemeDir/images/kolakowski2_04b.jpg"/>
        </div>
        <img class="right" src="$ThemeDir/images/kolakowski2_05.jpg"/></div><!-- logo col_7 -->
        <div class="clear"></div><div class="Menu col_16 col">
   <% include Navigation %>
</div>
     
      <div class="clear"></div><!-- clear -->
    </header>
</div><!-- row -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
$Layout
<div id="bar" class="row"></div>
<footer >
 <div  class="FBG_blog">
  <div class="address">Komitet Prawo i Sprawiedliwość<br/>
  ul. Pułtuska 9<br/>
  06-400 Ciechanów<br/>
  tel.:23 673 51 57<br/>
</div>
  <div class="clear"></div>
  </div>
  <div class="Footer">
<!-- footer credits -->
<div><p>
<big>&copy; 2011 Prawo i Sprawiedliwość</big><br>
<small><strong><a href="" style="color: #cccccc;text-decoration: none;">projekt i wykonanie</a> <a href="mailto:k.olszewski@o2.pl" style="color: #cccccc;text-decoration: none;">Krzysztof Olszewski</a></strong></small>
</p></div>
</div>
<div class="clear"></div>
	
</footer>	


</body>
</html>
