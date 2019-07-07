<!DOCTYPE html>
<html>
<head>
<title>Basic Java Examples</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
			</div>
			<div id="content-right">
				<div id="sub-content-left">
					<jsp:include page="top_add.html" />
					<div style="margin: 15px 5px 5px 10px;">
						<h1>Java Basic Examples:</h1>
					</div>
					<div id="div-question-home"
						onclick="location.href='armstrongNumber.jsp';">Write a java
						program to check if a number is Armstrong number or not?</div>
					<div id="div-question-home"
						onclick="location.href='palindromeStringExample.jsp';">Write
						a program to check if an input String is Palindrome or not?</div>
					<div id="div-question-home"
						onclick="location.href='factorialOfNumber.jsp';">Calculate
						the factorial of a given number using Java?</div>
					<div id="div-question-home"
						onclick="location.href='decimalToBinaryExample.jsp';">Write
						a program to convert from decimal to binary?</div>
					<div id="div-question-home"
						onclick="location.href='dateAndTimeExample.jsp';">Get
						current Date and Time in Java.</div>
					<div id="div-question-home"
						onclick="location.href='swapNumberWithOutThirdVariable.jsp';">How
						to swap two numbers without using third variables?</div>
					<div id="div-question-home"
						onclick="location.href='daoDesignPatternExamples';">DAO
						design pattern in Java</div>
					<div id="div-question-home"
						onclick="location.href='factoryDesignPatternExample';">Factory
						design pattern in Java</div>
					<div id="div-question-home"
						onclick="location.href='singletonClassExample';">Singleton
						design pattern in Java</div>
						
					<br />
					<div class="addthis_native_toolbox"></div>
					<br />
					<jsp:include page="contentBottom.jsp" />		
				</div>
				<div id="sub-content-right">
					<jsp:include page="contentRight.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
