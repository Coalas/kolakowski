<section class="row " id="styled">
    
    <div class="col col_11 ">
   
  
    <div class="pressed">
        
        	 
        	 <article >  
        	
        	 
				<a href="$Link"><h3>$Title</h3></a>
				
				<p><% include BreadCrumbs %>
	
	<% if SelectedTag %>
		<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
	<% else_if SelectedDate %>
		<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
	<% end_if %>
	
	<% if BlogEntries %>
		<% control BlogEntries %>
				<% include BlogSummary %>
		<% end_control %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>
	
	<% include BlogPagination %> </p>
				
				<div class="clear"></div>
				</article>
			
        
        <!-- -->
	</div>
    </div><!-- col_11 -->
  <div class="col col_5">
  	  <div class="side_element">
               <% include BlogSideBar %>
              
            </div><!-- side_element -->
    </div><!-- col_5 -->
</section><!-- row -->



<div id="BlogContent" class="blogcontent typography">
	
	
	
</div>
