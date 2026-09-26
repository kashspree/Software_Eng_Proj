<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewpoint" content="width=device-width, initial-scale=1.0"> 
	<meta charset="UTF-8"><!-- the specification of the character encoding to use in the html document.The Unicode Transformation Format -8 (UTF-*)
	It is defined by the International Organization for Standardization (ISO). UTF-8 represents up to 2,097,152 code point. -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- to control the scale of viewport -->
	<meta http-equiv="refresh" content="230"> <!-- if you want to refresh the page every x seconds -->
	<meta name="author" content="J. Alcime"><!-- specifies the author of the page/site -->
	<meta http-equiv="Content-Security-Policy" content="default-src 'self'"><!-- controls the resources a user agent is allowed to load.
	 It helps to detect and mitigate some attacks, including XSS and data injection. default-srch 'self' means allow anything, but the same origin.-->
	 <!-- data injection involves sending malicious data to an application or system -->
	 <meta http-equiv="X-Content-Type-Options" content="nosniff"><!-- this tag helps to prevent the browser from
	 Multipurpose Internet Mail Extension (MIME)-sniffing a response away from the declared -->
	<link rel ="stylesheet" type="text/css" href="../css/main_restricted_page.css">
	<link rel ="stylesheet" type="text/css" href="../css/front_page_content_display.css">
	<link rel ="stylesheet" type="text/css" href="../css/hmenu.css">
	<script type="text/javascript" src="javascript/sideMenuBar.js"></script>
	<title>Software Engineering (SE)</title>
</head>
<body>
<%
Integer sessionStatus = (Integer) session.getAttribute("session_status");
if (sessionStatus == null || sessionStatus <= 0) {
%>
    <jsp:include page="/jspFile/main_page_content_entry.jsp"/>
<%
}else{%>
	<%if(session.getAttribute("usr_firstname")==null)
	{
		session.invalidate();
		response.setHeader("cache-Control","no-cache, no-store, must-revalidate");
		response.sendRedirect("/auth/login.jsp");	
	}
	%>
	<%if(session.getAttribute("privilege").equals("admin") && (int)session.getAttribute("session_status")>0){%>
	<jsp:include page="/menu_items/menu__.jsp"/>
	<%}%>
	<%if(session.getAttribute("privilege").equals("standard") && (int)session.getAttribute("session_status")>0){%>
	<jsp:include page = "/menu_items/entry_menu.jsp"/>
	<%} %>	
<div>
	${welcome} <span style="font-size:40px; color: darkblue">${usr_firstname} ${usr_middlename} ${usr_lastname}</span>
</div>
	<header class="SE">
		<h1 class="SE_title">Department of Mathematics and Computer Sciences</h1>
		<h2 class="SE_subtitle">Software Engineering <span id="SE_subtitle SE_title_span">(SE)</span></h2>
		<p class="SE_def"> Developers' methods of applications design and development; such as the application of <span class="SDLC">Software Development Life Cycle(SDLC),</span><span class="SE_models">models </span> and <span class="SE_processes">processes</span></p>
	</header>		
	<%@include file="/jspFile/front_page_content_display.jsp" %>
	<%} %>
</body>

</html>