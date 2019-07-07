<!DOCTYPE html>
<html>
<head>
<title>Reverse a Number in Java- JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
						<div id="code-question"><h1>
					Write a program to Reverse a number.</h1></div>
<pre class="prettyprint" id="div-code">
public class ReverseNumber {

	public static void main(String[] args) {

		int number = 136892;
		int reversedNum = 0;

		int temp = 0;
		int inputNum = number;

		while (inputNum > 0) {

			temp = inputNum % 10;

			reversedNum = reversedNum * 10 + temp;

			inputNum = inputNum / 10;

		}

		System.out.println("Reverse of " + number + " is: " + reversedNum);
	}
}


</pre>
<div id="div-code-output">
<b>Output</b><hr>
Reverse of 136892 is: 298631
</div>
						<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
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