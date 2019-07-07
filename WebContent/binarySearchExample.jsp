<!DOCTYPE html>
<html>
<head>
<title>Binary Search Example in Java</title>
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
						Binary Search Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
public class BinarySearch {
	public static boolean isContains(int[] list, int key) {

		if (list.length == 0) {
			return false;
		}

		int start = 0;
		int end = list.length - 1;
		
		while (start <= end) {
		
			int mid = (start + end) / 2;
			
			if (key == list[mid]) {
				//found 
				return true;
			}
			if (key < list[mid]) {
				end = mid - 1;
			} else {
				start = mid + 1;
			}
		}
		return false;
	}

	public static void main(String[] args) {
		int[] list = { 10, 13, 56, 78, 90, 111 };
		
		// Search in the list
		System.out.println(isContains(list, 13));
		System.out.println(isContains(list, 56));
		System.out.println(isContains(list, 6));
		System.out.println(isContains(list, 90));
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>
true
true
false
true
</div>
						<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
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
