<!DOCTYPE html>
<html>
<head>
<title>How to remove duplicate characters from String | Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="How to remove duplicate characters from String in Java Example" />
<meta name="keywords" content="java, remove duplicate characters from String, remove duplicate characters">
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
							<h1>How to remove duplicate characters from String?</h1>
							<div id="code-answer"></div>
						</div>

<pre class="prettyprint" id="div-code">public class DuplicateCharRemoverExample {
	public static void removeDuplicateChars(String str) {

		char[] chars = str.toCharArray();
		Set&lt;Character&gt; charSet = new LinkedHashSet&lt;Character&gt;();

		for (char ch : chars) {
			charSet.add(ch);
		}

		StringBuilder strBldr = new StringBuilder();
		for (Character character : charSet) {
			strBldr.append(character);
		}
		System.out.println(strBldr.toString());
	}

	public static void main(String[] args) {
		removeDuplicateChars("helloworld");
		removeDuplicateChars("javadocworld");
	}
}
</pre>
						<div id="div-code-output"><b>Output</b><hr>helowrd
javdocwrl
										
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
