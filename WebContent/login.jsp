<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Login | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function validateEmail() {
	email = document.getElementById("emailId").value;
	password = document.getElementById("password").value;
	if(email=="")
	{
		alert("Please Enter Your Email.");
		document.form.email.focus();
		return false;
	}
	if(password=="")
	{
		alert("Please Enter Password.");
		document.form.password.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="contact_us">
				<div id="about_us_header">LOGIN</div>
				<div>
				<% 
			String msg = (String)request.getAttribute("message");
			if(msg==null)
				msg=""; 
			%>
			<div style="text-align: center; color: red;"><%=msg%></div>
					<br />
					<form name="form" action="onMemberlogin" method="post" >
						<div
							style="width: 100%; text-align: left; margin-left: 20px; font-size: 22px;">Are you an editor? Login here! </div>
						<div style="width: 40%; float: left; padding: 30px;">
							<table border="0"
								style="width: 100%; text-align: left;">
								<tr>
									<td>Your Email</td>
									<td><input type="text" id="emailId" name="emailId" required="required"></td>
								</tr>
								<tr>
									<td>Password </td>
									<td><input type="password" id="password" name="password" required="required"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit"
										style="background-color: #9b9b9b; color: #fff;"
										value="LOGIN NOW!" onclick="return validateEmail();"></td>
								</tr>
							</table>
						</div>
						<div style="width: 50%; float: right;">
							CONNECT WITH US ON: 
							<br /><br />
							<a
								href="http://www.facebook.com/javadocworld" target="_blank">
								<img src="images/social_icon/facebook.png"
								alt="Facebook Page of javadocworld" height="60px;" width="60px;"></a>
							 <a href="https://www.google.com/+Javadocworld_JavaExamples"
								target="_blank"><img
								src="images/social_icon/google_plus.png"
								alt="Google+ Page of javadocworld" height="60px;" width="60px;"></a>
							<a href="https://twitter.com/JavaDocWorld" target="_blank"> <img
								src="images/social_icon/twitter_alt.png"
								alt="Twitter Page of javadocworld" height="60px;" width="60px;"></a>
							<br /><br /><br /><br /><br />
							You can also email directly at
							<br/>
							<a href="mailto:info@javadocworld.com">info@javaqueue.com</a>
	
						</div>
					</form>
				</div>


				<br /> <br /> <br />
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
