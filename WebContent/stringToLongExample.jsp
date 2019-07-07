<!DOCTYPE html>
<html>
<head>
<title>String to Long Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="String to Long Java Example" />
<meta name="keywords"
	content="String to Long">
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
						<h1>String to Long Example in Java</h1></div>
<pre class="prettyprint" id="div-code">public class StringToLong {
	public static void main(String[] args) {

		String stringValue="120";
		
		//Constructs a newly allocated Long object
		//NumberFormatException will be thrown, if the string does not contain a parsable number
		Long longValue1 = new Long(stringValue);
		System.out.println(longValue1);
		
		//Returns a Long object holding the long value represented by the string. 
		//NumberFormatException will be thrown, if the string does not contain a parsable long.
		Long longValue2 = Long.valueOf(stringValue);
		System.out.println(longValue2);
		
		//Returns a new long primitive of Stringvalue
		//If stringValue is null, then a NullPointerException 
		//NumberFormatException will be thrown, if the string does not contain a parsable long.
		long longValue3= Long.parseLong(stringValue);
		System.out.println(longValue3);
		
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>120
120
120

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
