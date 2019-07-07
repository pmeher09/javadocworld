<!DOCTYPE html>
<html>
<head>
<title>Decimal to Binary Example in Java  - JavaDoc World</title>
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
						<div id="code-question">
						<h1>Decimal to Binary Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
public class DecimalToBinaryExample {

	public static void decimalToBinaryFormat(int inputNum) {
		System.out.print("\nBinary of "+inputNum +" is: ");
		
		int binary[] = new int[20];
		int index = 0;
		
		while (inputNum > 0) {
			binary[index++] = inputNum % 2;
			inputNum = inputNum / 2;
		}
		for (int i = index - 1; i >= 0; i--) {
			System.out.print(binary[i]);
		}
		
	}

	public static void main(String a[]) {
		decimalToBinaryFormat(7);
		decimalToBinaryFormat(20);
		decimalToBinaryFormat(30);
	}
}
</pre>
<div id="div-code-output">
<b>Output</b><hr>
Binary of 7 is: 111
Binary of 20 is: 10100
Binary of 30 is: 11110
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
