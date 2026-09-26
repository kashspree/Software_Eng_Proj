<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/new_acct.css">

<title>User Sign Up</title>
</head>
<script>
	function verifyemail()
	{
		var inputVemail = document.getElementById('txtemail_address');
		var inputEmailValue = inputVemail.value;	
		
		var inputCVemail = document.getElementById('txtconfirm_email');
		var inputCEmailValue = inputCVemail.value;
		var labelpwd=document.getElementById("emailVerify")
		if(inputEmailValue!=inputCEmailValue)
			{
				labelpwd.innerHTML = "Email mismatched";	
				labelpwd.style.color='red';	
			}
		else
			{
				labelpwd.innerHTML = "Email matched";	
				labelpwd.style.color='green';	
			
			}
	}
	function verifypassword()
	{
		var inputVpwd = document.getElementById('txtpassword');
		var inputVpwdValue = inputVpwd.value;	
		
		var inputCVpwd = document.getElementById('txtc_password');
		var inputCpwdValue = inputCVpwd.value;
		var pwdLabel = document.getElementById("pwdVerify");
		if(inputVpwdValue!=inputCpwdValue)
			{
				
				pwdLabel.innerHTML = "Password mismatched";
				pwdLabel.style.color='red';
			}
		else
			{
				pwdLabel.innerHTML = "Password matched";
				pwdLabel.style.color='green';
				
			}		
	}
</script>
<body>
<div class="sdlc-new-member">
<header class="new-account-headewr">
	<h3 class="el_title" style="text-align:center; color:#ee6c4d;font-size:25px;">New User Sign Up</h3><br>
	<p class="el_sub_title" style="text-align:center; color: #A9A9A9; font-size:20px; margin-right:40px; padding-right:10px">Complete the new member registration form to access to post, read and View articles and News Letters on the site.</p>
</header>  
<main class="new-account-conatainer">
	<form class="new-member--form" method="post" action="<%= request.getContextPath() %>/new_account_serv">

		<div class="element__form">
			<label for="email_address">Email Address</label>
			<input type="text" id="txtemail_address"name="txtemail_address" placeholder="Enter email address" required>			
		</div>
		<div class="element__form">
			<label for="confirmemail">Confirm Email Address</label>
			<input type="text" id="txtconfirm_email"name="txtconfirm_email" onkeyup="verifyemail()" placeholder="Confirm email address" required>
		</div>
		<label id="emailVerify" style="color:red; font-weight:bold"></label>
		<div class="element__form">
			<label for="firstname">First Name</label>
			<input type="text" id="txtfirst_name"name="txtfirst_name" placeholder="Enter first name" required>
		</div>
		<div class="element__form">
			<label for="middlename">Middle Name</label>
			<input type="text" id="txtmiddle_name"name="txtmiddle_name" placeholder="Enter middle name">
		</div>
		<div class="element__form">
			<label for="last_name">Last Name</label>
			<input type="text" id="txtlast_name"name="txtlast_name" placeholder="Enter last name" required>
		</div>
		<div class="element__form">
			<label for="password">Password</label>
			<input type="password" id="txtpassword"name="txtpassword" placeholder="Create a password" required>				
		</div>
		<div class="element__form">
			<label for="password">Confirm Password</label>
			<input type="password" id="txtc_password"name="txtc_password" onkeyup="verifypassword()" placeholder="Re-enter the password" required>				
		</div>	
		<label id="pwdVerify" style="color:red; font-weight:bold"></label>		
		<div class="element__form">
			<label for="security_question1">Select a security question</label>
			<select id="cbosecurity_question1" name="cbosecurity_question1">	
			    <option value="Choose a question">Choose a question</option>
                <option value="Mother's maiden name">Mother's maiden name</option>
              	<option value="Name the city your were born">Name the city your were born</option>
                <option value="Name of first pet">Name of first pet</option>
			</select>			
			<input type="text" id="txtanswer1"name="txtanswer1" placeholder="Enter the security question answer" required>	
		</div>		
		<div class="element__form">
			<label for="securit-question2">Select a security question</label>
			<select id="cbosecurity_question2" name="cbosecurity_question2">	
				 <option value="Choose a question">Choose a question</option>
                <option value="Mother's maiden name">Mother's maiden name</option>
              	<option value="Name the city your were born">Name the city your were born</option>
                <option value="Name of first pet">Name of first pet</option>
			</select>			
			<input type="text" id="txtanswer2"name="txtanswer2" placeholder="Enter the security question answer" required>		
		</div>	
		<br>
	<input class="submit__form" type=submit value="Submit"></input>				
	</form>
	</main>
</div>	
</body>
</html>
