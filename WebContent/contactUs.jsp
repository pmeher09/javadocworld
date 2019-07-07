<!DOCTYPE html>
<html>
<head>
<title>Contact Us -JavaQueue</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function validateEmail() {
	email = document.getElementById("emailId").value;
	message = document.getElementById("message").value;
	subject = document.getElementById("subject").value;
	name = document.getElementById("name").value;
	if(name=="")
	{
		alert("Please Enter Your Name.");
		document.form.name.focus();
		return false;
	}
	if(email=="")
	{
		alert("Please Enter Your Email.");
		document.form.email.focus();
		return false;
	}
	if(subject=="")
	{
		alert("Please Enter Subject.");
		document.form.subject.focus();
		return false;
	}
	if(message=="")
	{
		alert("Please Enter Your Message.");
		document.form.message.focus();
		return false;
	}
	if(message.length>1000){
		alert("Message should be 1000 chars maximum.");
		document.form.message.focus();
		return false;
	}
	if(email.length==0){
		return true;	
	}
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if(re.test(email)){
    	alert("Thank you for your message!")
    	return true;	
    }else{
    	alert("Please enter a valid email-id");
    	document.form.emailId.focus();
    	return false;
    }
}
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="contact_us">
				<div id="about_us_header">Contact Us</div>
				<div>
					<br /><br />
					<form name="form" action="onSubmitContactMsg" method="post" >
						<div
							style="width: 100%; text-align: left; margin-left: 20px; font-size: 22px;">We
							are looking forward to hear from you!</div>
						<div style="width: 40%; float: left; padding: 30px;">
							<table border="0"
								style="width: 100%; text-align: left;">
								<tr>
									<td style="width: 30%;">Your Name</td>
									<td><input type="text" id="name" name="name" required="required"></td>
								</tr>
								<tr>
									<td>Your Email</td>
									<td><input type="text" id="emailId" name="emailId" required="required"></td>
								</tr>
								<tr>
									<td>Subject</td>
									<td><input type="text" id="subject" name="subject" required="required"></td>
								</tr>
								<tr>
									<td style="height: 10px;"></td>
									<td></td>
								</tr>
								<tr>
									<td>Your Message</td>
									<td></td>
								</tr>
								<tr>
									<td colspan="2"><textarea rows="10" name="message" id="message"></textarea></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit"
										style="background-color: #9b9b9b; color: #fff;"
										value="SEND YOUR MESSAGE NOW!" ></td>
								</tr>
							</table>
						</div>
						<div style="width: 50%; float: right;">
						<br /><br /><br /><br />
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
							<a href="mailto:info.javadocworld@gmail.com">info.javaqueue@gmail.com</a>
	
						</div>
					</form>
				</div>


				<br /> <br /> <br />
			</div>
		</div>
		<jsp:include page="aboutus_footer.html" />
	</div>
</body>
</html>
