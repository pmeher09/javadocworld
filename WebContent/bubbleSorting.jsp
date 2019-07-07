<!DOCTYPE html>
<html>
<head>
<title>Bubble Sort Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Bubble Sort Example in Java" />
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
</head>
<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W9PGMJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W9PGMJ');</script>
<!-- End Google Tag Manager -->
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
						Bubble Sort Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
class BubbleSortExample {
	public static void main(String[] args) {

		int array[] = { 10, 4, 2, 11, 56, 34, 11, 0, 7 };
		int n = array.length;
		
		System.out.println("Before Sorting: ");
		for (int i = 0; i < n; i++) {
			System.out.print(array[i] + " , ");
		}

		int tmp;
		for (int i = 0; i < (n - 1); i++) {
			for (int j = 0; j < n - i - 1; j++) {
				if (array[j] > array[j + 1]) {
					tmp = array[j];
					array[j] = array[j + 1];
					array[j + 1] = tmp;
				}
			}
		}

		System.out.println("\nAfter Sorting: ");

		for (int i = 0; i < n; i++) {
			System.out.print(array[i] + " , ");
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Before Sorting: 
10 , 4 , 2 , 11 , 56 , 34 , 11 , 0 , 7 , 
After Sorting: 
0 , 2 , 4 , 7 , 10 , 11 , 11 , 34 , 56 , 

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
