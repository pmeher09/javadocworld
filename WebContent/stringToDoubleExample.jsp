<!DOCTYPE html>
<html>
<head>
<title>String to Double Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="String to Double Java Example" />
<meta name="keywords"
	content="String to Double">
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
						<h1>String to Double Example in Java</h1></div>
<pre class="prettyprint" id="div-code">public class StringToDouble {
	public static void main(String[] args) {

		String stringValue="120.54";
		
		//Constructs a newly allocated Double object
		//NumberFormatException will be thrown if the string does not contain a parsable number
		Double doubleValue1 = new Double(stringValue);
		System.out.println(doubleValue1);
		
		//Returns a Double object holding the double value represented by the string. 
		//NumberFormatException will be thrown if the string does not contain a parsable number
		Double doubleValue2 = Double.valueOf(stringValue);
		System.out.println(doubleValue2);
		
		//Returns a new double primitive of Stringvalue
		//If stringValue is null, then a NullPointerException 
		//NumberFormatException will be thrown if the string does not contain a parsable number
		double doubleValue3= Double.parseDouble(stringValue);
		System.out.println(doubleValue3);
		
	}
	
}
</pre>
<div id="div-code-output"><b>Output</b><hr>120.54
120.54
120.54

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
