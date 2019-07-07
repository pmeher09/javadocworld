<!DOCTYPE html>
<html>
<head>
<title>Armstrong Number Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Armstrong Number Example" />
<meta name="keywords"
	content="armstrong,armstrong number,java armstrong,armstrong number in java ">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
</head>
<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W9PGMJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W9PGMJ');</script>
<!-- End Google Tag Manager -->
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
			</div>
			<div id="content-right">
				<div id="sub-content-left">
						<jsp:include page="top_add.html" />
						
						<div id="div-program">
						<jsp:include page="navigation_link.jsp" />
						<div id="code-question">
						<h1>Write a java program to check if a number is Armstrong
							number or not?</h1></div>
						<pre class="prettyprint" id="div-code">
import java.util.Scanner;

class ArmstrongNumber {

	int number;
	//Scanner scanner;

	void getValue() {

		scanner = new Scanner(System.in);
		
		System.out.println("Enter a  number:");
		
		number = Integer.parseInt(scanner.nextLine());
	}

	void checkArmstrong() {

		int temp = number;
		int sum = 0;
		int mod = 0;

		while (temp != 0) {

			mod = temp % 10;
			sum = sum + (mod * mod * mod);
			temp = temp / 10;
		}

		if (sum == number)
			System.out.println(number + " is an Armstrong Number");
		else
			System.out.println(number + " is not an Armstrong Number");
	}
}

public class Main {

	public static void main(String args[]) {

		ArmstrongNumber armstrongNumber = new ArmstrongNumber();

		armstrongNumber.getValue();
		armstrongNumber.checkArmstrong();
	}
}</pre>
<div id="div-code-output"><b>Output</b><hr>Enter a number: 401
401 is not an Armstrong Number 
Enter a number: 407 
407 is an Armstrong Number
</div>
<br />
<div class="addthis_native_toolbox"></div>
					
					<jsp:include page="navigation_link.jsp" />
					</div><br />
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
