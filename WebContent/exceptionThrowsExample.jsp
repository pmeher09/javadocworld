<!DOCTYPE html>
<html>
<head>
<title>Throws Keyword Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Throws Keyword Example in Java" />
<meta name="keywords"
	content=" Throws Keyword ">
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
						<div id="code-question"><h1>Throws Keyword Example in Java</h1></div>
<pre class="prettyprint" id="div-code">import java.io.IOException;

class ExceptionThrowsExample {

	void methodOne() throws ClassNotFoundException {
		throw new ClassNotFoundException(
				" methodOne() - ClassNotFound Exception");
	}

	void methodTwo() throws IOException {
		throw new IOException("  methodTwo() - IO Exception");
	}

	public static void main(String args[]) {

		ExceptionThrowsExample obj = new ExceptionThrowsExample();
		System.out
				.println("Before calling ExceptionThrowsExample Class methods...");
		try {
			obj.methodOne();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		try {
			obj.methodTwo();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out
				.println("After calling ExceptionThrowsExample Class methods...");
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Before calling ExceptionThrowsExample Class methods...
java.lang.ClassNotFoundException:  methodOne() - ClassNotFound Exception
	at test.ExceptionThrowsExample.methodOne(ExceptionThrowsExample.java:8)
	at test.ExceptionThrowsExample.main(ExceptionThrowsExample.java:22)
java.io.IOException:   methodTwo() - IO Exception
	at test.ExceptionThrowsExample.methodTwo(ExceptionThrowsExample.java:13)
	at test.ExceptionThrowsExample.main(ExceptionThrowsExample.java:28)
After calling ExceptionThrowsExample Class methods...
						</div><br />
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
