<section class="row " id="styled">
    
    <div class="col col_12 ">
   
  
    <div class="pressed">
        
        	 
        	 <article >  
        	
        	 
				<a href="$Link"><h3>$Title</h3></a>
				
				<p>
		<h5>$AlbumTitle</h5>
		$GalleryLayout
		
	 </p>
				
				<div class="clear"></div>
				</article>
			
        
        <!-- -->
	</div>
    </div><!-- col_12 -->
  <div class="col col_4">
  	  <% if Albums %>
		<div id="Sidebar" class="typography">
			<div class="sidebarBox">
				<h3>Albumy</h3>
				<ul id="Menu2">
				<% control Albums %>
					<li class="$LinkingMode"><a class="$LinkingMode" href="$Link" title="$AlbumName">$AlbumName</a></li>
				<% end_control %>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="sidebarBottom"></div>
		</div>
	
	<% end_if %>
    </div><!-- col_4 -->
</section><!-- row -->

	


	
	
	
