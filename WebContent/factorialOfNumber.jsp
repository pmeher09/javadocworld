<!DOCTYPE html>
<html>
<head>
<title>Factorial Program in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Factorial of a number Example in java" />
<meta name="keywords" content="factorial program in java, factorial example" />

<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
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
						<div id="div-program">
						<jsp:include page="navigation_link.jsp" />
						<div id="code-question">
						<h1>Factorial of a Number in Java</h1></div>
<pre class="prettyprint" id="div-code">
public class Factorial {
	public static void main(String[] args) {

		int inputNumber = 5;

		int factorial = inputNumber;

		for (int i = (inputNumber - 1); i > 1; i--) {
			factorial = factorial * i;
		}

		System.out.println("Factorial of " + inputNumber + "is : " + factorial);
	}
}
</pre>
<div id="div-code-output">
<b>Output</b><hr>
Factorial of 5 is : 120
</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
						<jsp:include page="contentBottom.jsp" />
						</div>
<jsp:include page="suggestionProgramList1.jsp" />
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
