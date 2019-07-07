<!DOCTYPE html>
<html>
<head>
<title>Iterator Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Iterator Java Example" />
<meta name="keywords"
	content="Iterator, java Iterator, collections, iterate element from a list">
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
						<h1>Iterator Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class IteratorExample {
	public static void main(String a[]) {
		List&lt;Integer&gt; list = new ArrayList&lt;Integer&gt;();
		list.add(34);
		list.add(123);
		list.add(10);
		list.add(56);
		list.add(89);
		list.add(50);

		Iterator&lt;Integer&gt; iterator = list.iterator();
		//Iterating elements from list
		System.out.println("Iterating elements from list: ");
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}
		
		System.out.println("List before removing 123: "+list);
		// remove element 123 from list
		iterator = list.iterator();
		while (iterator.hasNext()) {
			if (iterator.next() == 123) {
				iterator.remove();
				break;
			}
		}
		System.out.println("List after removing 123: "+list);
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Iterating elements from list: 
34
123
10
56
89
50
List before removing 123: [34, 123, 10, 56, 89, 50]
List after removing 123: [34, 10, 56, 89, 50]

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
