<!DOCTYPE html>
<html>
<head>
<title>String Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="String Java Example" />
<meta name="keywords" content="java, duplicate characters from String, duplicate char, string duplicate char">
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
							<h1>How to print duplicate characters from String?</h1>
							<div id="code-answer"></div>
						</div>

<pre class="prettyprint" id="div-code">import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class StringDuplicateCharExample {
	
	public void printDuplicateCharacters(String str) {
		System.out.println("Duplicate characters in : " + str);

		Map&lt;Character, Integer&gt; duplMap = new HashMap&lt;Character, Integer&gt;();

		char[] chars = str.toCharArray();
		for (Character ch : chars) {
			if (duplMap.containsKey(ch)) {
				duplMap.put(ch, duplMap.get(ch) + 1);
			} else {
				duplMap.put(ch, 1);
			}
		}
		Set&lt;Character&gt; keys = duplMap.keySet();
		for (Character chr : keys) {
			if (duplMap.get(chr) > 1) {
				System.out.println(chr + " : " + duplMap.get(chr));
			}
		}
	}

	public static void main(String a[]) {
		StringDuplicateCharExample dcs = new StringDuplicateCharExample();
		dcs.printDuplicateCharacters("javadocworld");
		dcs.printDuplicateCharacters("abcdabCCdxyxxz");
		dcs.printDuplicateCharacters("HelloWorld");

	}
}
</pre>
						<div id="div-code-output"><b>Output</b><hr>Duplicate characters in : javadocworld
d : 2
a : 2
o : 2
Duplicate characters in : abcdabCCdxyxxz
d : 2
b : 2
C : 2
a : 2
x : 3
Duplicate characters in : HelloWorld
o : 2
l : 3									
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
