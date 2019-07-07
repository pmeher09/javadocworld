<!DOCTYPE html>
<html>
<head>
<title>Swap two numbers without using third variable in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Swap two variables without using third variable" />
<meta name="keywords"
	content=" Swap two numbers without using third variable in java, Swap two variables without using third variable in java ">
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
						<div id="code-question"><h1>Swap two numbers without using third variable in Java</h1></div>
<pre class="prettyprint" id="div-code">public class SwapTwoNumbersExample {

	public static void swapTwoNumbers(int number1, int number2) {
		System.out.println("Before Swap  number1:"+number1 + " number2:" + number2);
		number1 = number1 + number2;
		number2 = number1 - number2;
		number1 = number1 - number2;
		System.out.println("After  Swap  number1:"+number1 + " number2:" + number2);
		System.out.println();
	}

	public static void main(String[] args) {
		swapTwoNumbers(23, 45);
		swapTwoNumbers(67, 203);
		swapTwoNumbers(156, 4);
	}
}


</pre>
<div id="div-code-output"><b>Output</b><hr>Before Swap  number1:23 number2:45
After  Swap  number1:45 number2:23

Before Swap  number1:67 number2:203
After  Swap  number1:203 number2:67

Before Swap  number1:156 number2:4
After  Swap  number1:4 number2:156
						</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />

						</div>
						<jsp:include page="contentBottom.jsp" />
<jsp:include page="suggestionProgramList2.jsp" />
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