<!DOCTYPE html>
<html>
<head>
<title>Java string split Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Java string split Example" />
<meta name="keywords"
	content=" split string in java, substring ">
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
						<div id="code-question"><h1>Java String split example</h1></div>
<pre class="prettyprint" id="div-code">
public class StringSplitExample {
	public static void main(String[] args) {
		String str = "hello this is string split example";
		
		//splitting string with space
		String[] strings = str.split("\\ ");
		
		//total number of sub-strings
		System.out.println("Total number of sub-strings : "+strings.length);
		
		for (int i = 0; i < strings.length; i++) {
			System.out.println(strings[i]);
		}
		
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Total number of sub-strings : 6
hello
this
is
string
split
example	</div>
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
