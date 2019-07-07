<!DOCTYPE html>
<html>
<head>
<title>Fibonacci Series Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Fibonacci Series Example in Java" />
<meta name="keywords"
	content="fibonacci series example, java">
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
						<div id="code-question"><h1>Fibonacci Series Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
public class FibonacciSeriesExample {
	
	public static void printFibonacciSeries(int num){
		System.out.println("\n\nFibonacci Series of "+num +" is:");
		int prev = 0;
		int current = 1;
	
		int temp = 0;
		
		System.out.print(prev+",");
		
		while (current <= num) {
			System.out.print(current+",");
			
			temp = current;
			current += prev;
			prev = temp;
		}
	}
	public static void main(String[] args) {
		System.out.print("FibonacciSeriesExample");
		printFibonacciSeries(100);
		printFibonacciSeries(1);
		printFibonacciSeries(34);
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>
FibonacciSeriesExample

Fibonacci Series of 100 is:
0,1,1,2,3,5,8,13,21,34,55,89

Fibonacci Series of 1 is:
0,1,1

Fibonacci Series of 34 is:
0,1,1,2,3,5,8,13,21,34
						</div>
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
