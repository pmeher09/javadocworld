<!DOCTYPE html>
<html>
<head>
<title>Count occurrence of a given character in String | Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="count occurrence of a given character in String in Java Example" />
<meta name="keywords" content="java, count occurrence, count occurrence of a given character in String">
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
							<h1>How to count occurrence of a given character in String?</h1>
							<div id="code-answer"></div>
						</div>

<pre class="prettyprint" id="div-code">public class CountCharInString {

	static void printCount(String str, char ch) {

		// counting occurrence of character with loop
		int charCount = 0;
		for (int i = 0; i < str.length(); i++) {
			if (str.charAt(i) == ch) {
				charCount++;
			}
		}
		System.out.println("Count of character '" + ch + "' on String '" + str
				+ "' is : " + charCount);

	}

	public static void main(String args[]) {

		String input = "javadocworld";
		printCount(input, 'a');
		printCount(input, 'w');

	}
}

</pre>
						<div id="div-code-output"><b>Output</b><hr>Count of character 'a' on String 'javadocworld' is : 2
Count of character 'w' on String 'javadocworld' is : 1			
						</div>
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
