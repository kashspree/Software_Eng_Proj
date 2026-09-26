<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
	    <link rel ="stylesheet" type="text/css" href="../cssFiles/main_page_content_entry.css">
	    <title>Data Entry</title>
	</head>
	<body>
	   <h1 class="page_title">Software Engineering Test Data Entry</h1>
	   <br>
	   <h2>Software Engineering Life Cycle (SDLC) Elements </h2>
	   <br>
	   <div class="SDLC">
	   
		   <div class="content_entry">
		   	  <label class="element_entry">Process Title and definition</label>
		      <form class="entry_form_element" method="post" action="../entry">
		      	<div class="div_form_element">
		      		<label for="title">Section title</label>
		         	<input type="text" id="txttitle" name="txttitle" placeholder="Enter the subsection title"/>
		         </div>
		         <div class="div_form_element">
		         	<label for="titlecontent">Section Detail</label>
		         	<textarea id="txtdetail" name="txtdetail" placeholder="Enter the section content"></textarea>
		         </div>
		         <div class="div_form_element"></div>
		         <input class="form_element_button"type="submit" value="Submit">
		      </form>
		   </div>
		   
			   <div class="image_placeholder">		   
			   
			   
			   </div>
		   </div>
		</body>
	<script>
        const textarea= document.querySelector("textarea");
        textarea.addEventListener("keyup", e =>{               
        textarea.style.height="85px";
        let scHeight =e.target.scrollHeight;
        textarea.style.height = `${scHeight}px`;
});
 </script>

</html>