<!DOCTYPE html>
<html>
<head>
<title>Reverse an Array in Java </title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Array Reverse Java Example" />
<meta name="keywords"
	content="reverse a array in java, int array, array, reverse ">
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
						<div id="code-question"><h1>Write a program to reverse an Array in Java?</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.Arrays;

public class ReverseIntArrayExample {

	public static void reverse(int[] inputArray) {

		System.out.println("Input array is : " + Arrays.toString(inputArray));

		// Return if array is null or empty
		if (inputArray == null || inputArray.length <= 1) {
			
			System.out.println("The input array is null or empty");
			return;
		} else {
			System.out.println("Size of Array is: " + inputArray.length);
		}

		for (int i = 0; i < inputArray.length / 2; i++) {

			int temp = inputArray[i];
			// swap numbers
			inputArray[i] = inputArray[inputArray.length - 1 - i];
			inputArray[inputArray.length - 1 - i] = temp;
		}

		System.out.println("Reversed array is: " + Arrays.toString(inputArray));
	}

	public static void main(String[] args) {
		System.out.println("Reverse Integer Array  Example");
		int[] numbers = { 0, 1, 2, 3, 4, 5, 6, 7, 8 };
		reverse(numbers);
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Reverse Integer Array  Example
Input array is : [0, 1, 2, 3, 4, 5, 6, 7, 8]
Size of Array is: 9
Reversed array is: [8, 7, 6, 5, 4, 3, 2, 1, 0]
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
