<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">
<script src="..javascript/sideMenuBar.js"></script>
<script type="text/javascript" src="javascript/sideMenuBar.js"></script>
<title></title>
</head>
<body>
	<header class=menu_header>
	   <nav class="nav_menu">  	     
	     <!-- horizontal meny-->
	   	 <ul class="menu_containerul">   
	       <li class="menu_containerli home"><a class="menu_links" href="">Logo</a>
	       <li class="menu_containerli home"><a class="menu_links" href="">Home</a>
	       </li> 
	       <li class="menu_dropdown admin"><a class="menu_links"href="">Administrative Tasks &#x25BE;</a>
	       		<ul class="dropdown_list">	           			 
	              <li class="dropdown_items add_content"><a class="dropdown_link"href="main_page_content_entry.jsp">Site Content</a>
	              	<ul class="content_creation">	 
	             		<li class="dropdown_items add_content"><a class="dropdown_link"href="main_page_content_entry.jsp">Add content</a></li>
	             		<li class="dropdown_items delete_content"><a class="dropdown_link" href="edit_page_content.jsp">Edit content</a></li>
	              		<li class="dropdown_items edit_content"><a class="dropdown_link"href="remove_page_content.jsp">Remove content</a></li>
	              	</ul>
	              </li>	
	              <li class="dropdown_items add_content"><a class="dropdown_link"href="main_page_content_entry.jsp">Events</a>
	              	<ul class="content_creation">	 
	             		<li class="dropdown_items add_content"><a class="dropdown_link"href="view_events.jsp">View Events</a></li>	             		
	              	</ul>
	              </li>	  
	                            
	       		</ul>
	       </li>
	       <li class="menu_dropdown CSC"><a class="menu_links"href="">Software Engineering Processes &#x25BE;</a>      
	        	<ul class="dropdown_list">	           			 
	               <li class="dropdown_items add_content"><a class="dropdown_link"href="main_page_content_entry.jsp">SE Articles and Journals</a>
		               <ul class="News_Article">
			              <li class="dropdown_items delete_content"><a class="dropdown_link" href="edit_page_content.jsp">Add Article or Journal</a></li>
			              <li class="dropdown_items edit_content"><a class="dropdown_link"href="remove_page_content.jsp">Remove Article or Journal</a></li>
			              <li class="dropdown_items delete_content"><a class="dropdown_link" href="edit_page_content.jsp">Read Article or Journal</a></li>
			            </ul>
	       			</li>	       			
	       			
	       		</ul> 
	       	</li>
	       <li class="menu_dropdown CSC"><a class="menu_links"href="">Software Engineering Job Listings &#x25BE;</a>
	        <ul class="dropdown_list">	           			 
	              <li class="dropdown_items add_content"><a class="dropdown_link"href="enter_job_listing.jsp">Add a Listing</a></li>
	               <li class="dropdown_items add_content"><a class="dropdown_link"href="vive__attack.jsp">Remove a Listing</a></li>
	              <li class="dropdown_items delete_content"><a class="dropdown_link"href="view_listing.jsp">View Recent Listings</a></li>
	          </ul> 
	       </li>  
	       <li class="menu_dropdown usr_auth"><a class="menu_links"href="">User Authentication &#x25BE;</a>
		   	  <ul class="dropdown_list">	           			 
	              <li class="dropdown_items add_content"><a class="dropdown_link"href="auth/logout.jsp">Logout</a></li>
	              <li class="dropdown_items delete_content"><a class="dropdown_link"href="auth/new_acct.jsp">Create New User</a></li>
	              <li class="dropdown_items Change_Privilege"><a class="dropdown_link"href="auth/change_privilege.jsp">Change User Privilege</a></li>
	          </ul>  
	       </li>
	       <!-- 
	       <li onclick=showBar() class="menu_links"><a href="#"> <svg xmlns="http://www.w3.org/2000/svg" height="26" viewBox="0 -960 960 960" width="26" fill="#1f1f1f"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
	    		<!-- <li onclick=showMenuBar() class="menu_containerli"><a href="#"> <svg xmlns="http://www.w3.org/2000/svg" height="26" viewBox="0 -960 960 960" width="26" fill="#1f1f1f"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
	   -->
	    </ul>
	   </nav>	
   </header>
</body>
</html>