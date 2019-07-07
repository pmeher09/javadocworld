<!DOCTYPE html>
<html>
<head>
<title>String to char array in java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="String to char array in java" />
<meta name="keywords"
	content=" array, string to char array in java, char array, string">
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
						<div id="code-question"><h1>String to char array example in java?</h1></div>
<pre class="prettyprint" id="div-code">
public class StringToCharArrayExample {

	public static void main(String args[]) {

		String str = "JAVADOCWORLD";

		// declare the char array
		char[] charArray;

		// use toCharArray() method to convert from string to array
		charArray = str.toCharArray();

		// print the array
		for (int index = 0; index < charArray.length; index++)
			System.out.println(charArray[index]);

	}

}
</pre>
<div id="div-code-output"><b>Output</b><hr>J
A
V
A
D
O
C
W
O
R
L
D</div>
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
