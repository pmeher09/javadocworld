<!DOCTYPE html>
<html>
<head>
<title>Array Sorting in Java</title>
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
						<div id="code-question"><h1>
						How
						to sort an Array?</h1></div>
<pre class="prettyprint" id="div-code">
public class ArraySorting {
	public static void main(String[] args) {
		String[] animals = new String[] { "Dog", "Elephant", "Cat", "Tiger" };

		Arrays.sort(animals);

		int i = 0;
		for (String animal : animals) {
			System.out.println("Animal " + ++i + " : " + animal);
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Animal 1 : Cat
Animal 2 : Dog
Animal 3 : Elephant
Animal 4 : Tiger
</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
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
