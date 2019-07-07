<!DOCTYPE html>
<html>
<head>
<title>Read only List in Java </title>
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
						<div id="code-question"><h1>How
						to create a read-only List in Java?</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {
	public static void main(String[] argv) throws Exception {
		List&lt;String&gt; myList = new ArrayList&lt;String&gt;();
		myList.add("abc");
		myList.add("def");
		
		myList = Collections.unmodifiableList(myList);

		try {
			myList.add("efg");
			
		} catch (UnsupportedOperationException e) {
			System.out.println("This is a read only collection, you can't modify it");
		}
		
		System.out.println("myList :"+ myList.toString());
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>This is a read only collection, you can't modify it
myList :[abc, def]
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
