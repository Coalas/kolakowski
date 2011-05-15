<section class="row " id="styled">
    
    <div class="col col_11 ">
   
  
    <div class="pressed">
        
        	 
        	 <article >  
        	
        	 
				
				
    <div id="BlogContent" class="typography">
	<% include BreadCrumbs %>
	
	<div class="blogEntry">
		<h2 class="postTitle">$Title</h2>
		<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
		
		$Content
		
	</div>
	
	<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
	
	<% if TrackBacksEnabled %>
		<% include TrackBacks %>
	<% end_if %>
	$PageComments
</div>
			
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
