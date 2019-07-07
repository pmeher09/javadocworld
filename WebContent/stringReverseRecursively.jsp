<!DOCTYPE html>
<html>
<head>
<title>Reverse a String recursively in Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Reverse a String recursively Java Example" />
<meta name="keywords"
	content="Reverse a String recursively in Java, string reverse, recusively string reverse">
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
						<h1>Write a program to reverse a string using recursive methods?</h1></div>
<pre class="prettyprint" id="div-code">
public class ReverseStringRecursiveExample {
	public String resultString = "";

	public static void main(String[] args) {

		String inputString = "abcdefghijk";
		System.out.println("Input String: " + inputString);

		ReverseStringRecursiveExample recursiveExample = new ReverseStringRecursiveExample();

		System.out.println("Result String: "
				+ recursiveExample.reverse(inputString));
	}

	private String reverse(String inputString) {
		if (resultString.length() == inputString.length()) {
			return resultString;
		} else {
			resultString += inputString.charAt(inputString.length() - 1
					- resultString.length());
			reverse(inputString);
			return resultString;
		}
	}
}

</pre>
<div id="div-code-output"><b>Output</b><hr>Input String: abcdefghijk
Result String: kjihgfedcba</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
						</div>
						<jsp:include page="contentBottom.jsp" />
<jsp:include page="suggestionProgramList3.jsp" />
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
