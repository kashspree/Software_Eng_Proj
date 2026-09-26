<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Authentication Page</title>
<link rel ="stylesheet" type="text/css" href="css/front_page_title.css">
	<link rel ="stylesheet" type="text/css" href="../css/hmenu.css">
	<link rel ="stylesheet" type="text/css" href="../css/hmenu.css">
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<script type="text/javascript" src="javascript/sideMenuBar.js"></script>
</head>
<header class="user-login">
<%-- <%@ include file="../menu_items/log_New_acct.jsp" %> --%>
<h3>Member Login Page</h3>
<br>
<h4>Your account has been successfully created! Within 24 hours your account will be activated. For detail about your account activation, please send email to info@cyberlab.com</h4>
</header>
<body>
	<div class="authuser-message">	
	${success}${firstname}
	<br>
	${username}
	<br>
	${userid}	
	<br>
	${pwd}	
	</div>
	<br>
	<br>
<div class="div-login-form">
  <form method="post" action="../user_login" class="loginform">
    <label for="txtuser_name">Enter user name</label>
    <input type="text" id="txtuser_name" name="txtuser_name" placeholder="Enter your user name">

    <br><br>

    <label for="txtuser_password">Enter password</label>
    <input type="password" id="txtuser_password" name="txtuser_password" placeholder="Enter your password">

    <br><br><br>

    <input type="submit" value="Login">

    <br><br>

    <a href="forgotpwd.jsp" class="btn-link">
      <button type="button" class="link-btn">Forgot Password</button>
    </a>

    <br><br>

    <a href="new_acct.jsp" class="btn-link">
      <button type="button" class="link-btn">Sign Up</button>
    </a>
  </form>
</div>


</body>
</html>