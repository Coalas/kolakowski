<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(forms) %> 
		<% require themedCSS(style) %> 
		<% require themedCSS(grid) %> 
		<!-- this script is needed for using advanced css selectors in your css -->
    <!--[if IE 7]>
    	<script src="$ThemeDir/js/selectivizr.js"></script>
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
<section class="row " id="styled">
    
    <div class="col col_11 ">
    <div class="col col_10 space">
      <img class="left" src="$ThemeDir/images/kolakowski2_09.jpg"/>
      <blockquote >$SiteConfig.Tagline </blockquote>
    </div>
    <div class="clear"></div>
    <div class="pressed" hasLayout="true">
        
        	 <% control LatestNews %>
        	 <article >  
        	 <div class="titleimage">
        	 $TitleImage
        	 </div>
        	 
				<a href="$Link"><h3>$Title</h3></a>
				<div class="date">
				Autor: $Author
                <span class="day">$Date.format(d)</span>
                <span class="month">$Date.FormatI18N(%b) </span>
                <span class="year">$Date.format(Y)</span>
                </div>
				<p>$Content.LimitWordCount(30) </p>
				<a href="$Link" class="more">czytaj więcej &rarr;</a>
				<div class="clear"></div>
				</article>
			<% end_control %> 
        
        <!-- -->
	</div>
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
