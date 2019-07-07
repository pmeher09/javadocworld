<!DOCTYPE html>
<html>
<head>
<title>Reverse a String in Java</title>
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
						Write a program to reverse a String (don't use any predefined methods of string class)?</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.Scanner;

public class StringReverse {
	static String inputString = "";

	public static void main(String args[]) {
		getValue();
		reverse();
	}

	public static void getValue() {
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter a String :");
		inputString = scan.nextLine();
	}

	public static void reverse() {
		if (inputString == null || inputString.isEmpty()) {
			System.out.println("Please enter a valid string");
		}

		String reverse = "";

		for (int i = inputString.length() - 1; i >= 0; i--) {
			reverse = reverse + inputString.charAt(i);
		}

		System.out.println("Reverse is: " + reverse);
	}

}
</pre>
<div id="div-code-output"><b>Output</b><hr>
Enter a String :
apple
Reverse is: elppa

Enter a String :
earth
Reverse is: htrae
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
