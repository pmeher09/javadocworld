<!DOCTYPE html>
<html>
<head>
<title>First Non Repeated Char from String Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="First Non Repeated Char from String Example in Java" />
<meta name="keywords" content="java, non repeated char from string,  string char">
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
							<h1>Write a program to print first non repeated character from String?</h1>
							<div id="code-answer"></div>
						</div>

<pre class="prettyprint" id="div-code">public class FirstNonRepeated {

	public static Character firstNonRepeatedCharacter(String str) {
		Map&lt;Character, Integer&gt; chrHashMap = new HashMap&lt;Character, Integer&gt;();
		int i, length;
		Character chr = null;
		length = str.length();
		
		for (i = 0; i < length; i++) {
			chr = str.charAt(i);
			if (chrHashMap.containsKey(chr)) {
				chrHashMap.put(chr, chrHashMap.get(chr) + 1);
			} else {
				chrHashMap.put(chr, 1);
			}
		}

		for (i = 0; i < length; i++) {
			chr = str.charAt(i);
			if (chrHashMap.get(chr) == 1)
				return chr;
		}
		return null;
	}

	public static void main(String[] args) {
		System.out.println("Please enter the input string :");
		Scanner in = new Scanner(System.in);
		String s = in.nextLine();
		char c = firstNonRepeatedCharacter(s);
		System.out.println("The 1st non-repeated character is :  " + c);
	}
}
</pre>
						<div id="div-code-output"><b>Output</b><hr>Please enter the input string :
javadocworldjava
The 1st non-repeated character is :  c			
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
