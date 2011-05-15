<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(typography) %> 
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
    	
        <div class="logo col_16 col"><img class="left" src="$ThemeDir/images/kolakowski2_03.jpg"/><div class="left" id="banner"><img  src="$ThemeDir/images/kolakowski2_04.jpg"/></div><img class="right" src="$ThemeDir/images/kolakowski2_05.jpg"/></div><!-- logo col_7 -->
        <div class="clear"></div><div class="Menu col_16 col">
   <% include Navigation %>
</div>
     
      <div class="clear"></div><!-- clear -->
    </header>
</div><!-- row -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
<!-- this section shows you most of the styled elements from the general stylesheet -->
<section class="row" id="styled">
    
    <div class="col col_11 ">
    <div class="col col_10 space">
      <img class="left" src="$ThemeDir/images/kolakowski2_09.jpg"/>
      <blockquote class="left">Szanowni Państwo .... </blockquote>
    </div>
        <article>    
        	<div class="date">
                <span class="day">16</span>
                <span class="month">Mar</span>
                <span class="year">2010</span>
            </div>
            <a href="article.html"><h3>Making an infinite JQuery carousel</h3></a>
            <p>Duis ac arcu ante, at lacinia dui. Ut eget justo in nulla rutrum mollis. Mauris euismod justo et smod justo  smod justo  quam bibendum laoreet volutpat lorem mollis. In hac habitasse platea dictumst.
             Mauris ut eleifend neque. Duis nulla metus, tempus nec varius quis, tincidunt consectetur nisi. Donec rhoncus quam vel quam bibendum rutrum. Mauris et commodo felis. Nam varius eleifend nulla quis sagittis. Quisque id tortor at dolor dictum interdum.</p>
             <a href="article.html" class="more">read more &rarr;</a>
             <div class="clear"></div>
        </article>
        <!-- -->
        <article>  
        	<div class="date">
                <span class="day">23</span>
                <span class="month">Jan</span>
                <span class="year">2011</span>
            </div>  
            <a href="article.html"><h3>jQuery and Ajax :) the simple designer way</h3></a>
            <p>This is really short text.</p>
             <a href="article.html" class="more">read more &rarr;</a>
             <div class="clear"></div>
        </article>
        <!-- -->
        <article>    
        	<div class="date">
                <span class="day">09</span>
                <span class="month">Sep</span>
                <span class="year">2010</span>
            </div>
            <a href="article.html"><h3>Create an AMAZING contact form with no ready made plugins</h3></a>
            <p>Duis ac arcu ante, at lacinia dui. Ut eget justo in nulla rutrum mollis. Mauris euismod justo et smod justo  smod justo  quam bibendum laoreet volutpat lorem mollis. In hac habitasse platea dictumst.
             Mauris ut eleifend neque. Duis nulla metus, tempus nec varius quis, tincidunt consectetur nisi. Donec rhoncus quam vel quam bibendum rutrum. Mauris et commodo felis. Nam varius eleifend nulla quis sagittis. Quisque id tortor at dolor dictum interdum.</p>
             <a href="article.html" class="more">read more &rarr;</a>
             <div class="clear"></div>
        </article>
        <!-- -->
    </div><!-- col_11 -->
  <div class="col col_5">
  	  <div class="side_element photo">
                <h2>Galeria</h2>
                	
            </div><!-- side_element -->
            <div class="side_element vid">
            	<h2>Wideo</h2>
              
            </div><!-- side_element -->
    </div><!-- col_5 -->
</section><!-- row -->
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
