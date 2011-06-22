<section class="row " id="styled">
    
    <div class="col col_11 ">
   
  
    <div class="pressed">
        
        	 
        	 <article >  
        	
        	 
				<a href="$Link"><h3>$Title</h3></a>
				
				<p>$Content </p>
				$Form
				<div class="clear"></div>
				</article>
			
        
        <!-- -->
	</div>
    </div><!-- col_11 -->
  <div class="col col_5">
  	  <div class="side_element photo">
                <h2>Galeria</h2>
                	<div  id="gallery" style="height: 160px; width: 215px; margin-left:18px;margin-top:37px;" >
	<% control GalleryItems %>
	<img  src="$FileName"/>
	<% end_control %>
      
        </div>	
            </div><!-- side_element -->
            <div class="side_element vid">
            	<h2>Wideo</h2>
              <div  id="wideo" style="height: 142px; width: 225px; margin-left:14px;margin-top:50px;" >
	 
	<a href="#" data-reveal-id="theModal"><img  src="$ThemeDir/images/kacz.png"  height="142px" width="225px"/></a>
      
        </div>	
            </div><!-- side_element -->
    </div><!-- col_5 -->
</section><!-- row -->
