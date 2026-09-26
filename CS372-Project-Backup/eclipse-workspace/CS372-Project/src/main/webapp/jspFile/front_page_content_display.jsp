<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cs372.fall2025.model.new_account_model" %>
<%@ page import="cs372.fall2025.dao.Adm_service_dao" %>
<%@ page import="cs372.fall2025.model.Front_page_display_model" %>



<%
		Adm_service_dao pageContent = new Adm_service_dao();
        ArrayList <Front_page_display_model>getpageContent = pageContent.get_front_page_data();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Software Engineering</title>
<link rel ="stylesheet" type="text/css" href="../cssFiles/front_page_content_display.css">
<link rel ="stylesheet" type="text/css" href="stylesheet/sitemenu.css">
<link rel ="stylesheet" type="text/css" href="css/front_page_content_display.css">
</head>
<body>
	<section class="SDLC_front_data">	
	<div class="left sdlc_content">
		<table class="SDLC_container">
			<%for(int j=0; j<1; j++){ %>
	        <tr class="SDLC_tr_content">
	        <%for(int i = 0; i<getpageContent.size(); i++){ %>
	        	<%Front_page_display_model item = (Front_page_display_model)getpageContent.get(i); %>
	             <%if(i<2){ %>
	                 <td class="SDLC_col_data_item1 td_col">
	                     <p class="txttitle"><%=item.getDisplay_title()%></p>
	                     <br>
	                     <p class="txtdetail"><%=item.getDisplay_content()%></p>
	                 </td>
	             <%} %>
	                     <!-- second row -->
	              <%if(i>=2){ %>
	                 <td class="SDLC_col_data_item2 td_col">
	                     <p class="txttitle"><%=item.getDisplay_title()%></p>
	                     <br>
	                     <p class="txtdetail"><%=item.getDisplay_content()%></p>
	                 </td>
	             <%} %>  
	         <%} %>
	         </tr>
	         <%} %>        
           </table>
       </div>       
       <!-- this is the item in the container -->	       		
	   <div class="right SDLC_signup">
	   	<div class="title_annoucement">
	   		<h3 class="el_title">Sign Up Today!</h3>
			<br>
			<p class="el_sub_title">Please fill out the form below to subscribe for current news and updates on:</p>
		</div>
			<form class="signup__form">
				<ul class="ul_list">
					<li class="ul_list_item">Software Engineering</li>
					<li class="ul_list_item">CyberSecurity</li>					
				</ul>
				<div class="element__form">
					<label for="first_name">First Name</label>
					<input type="text" id="txtfirstname"name="first_name" placeholder="Enter first name">
				</div>
				<div class="element__form">
					<label for="last_name">Last Name</label>
					<input type="text" id="txtlastname"name="last_name" placeholder="Enter last name">
				</div>
				<div class="element__form">
					<label for="email">Email Address</label>
					<input type="text" id="txtemail"name="email" placeholder="Enter email">				
				</div>
				<div class="element__form">
					<label for="sdlc_steps">Get update on</label>
					<select id="step">	
						<option value="Planning">Select a SDLC Step</option>
						<option value="Planning">Planning</option>
						<option value="Analysis">Analysis</option>
						<option value="Design">Design</option>
						<option value="Implementation">Implementation</option>
						<option value="Testing">Testing/Integration</option>
						<option value="Maintenance">Maintenance</option>
					</select>			
				</div>
				<br>
				<input class="submit__form" type=submit value="Submit"></input>				
			</form>
		</div>	
	</section>
</body>
</html>