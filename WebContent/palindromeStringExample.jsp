<!DOCTYPE html>
<html>
<head>
<title>Palindrome String Example in Java</title>
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
						<div id="code-question">
						<h1>Write a
						program to check if an input String is Palindrome or not?</h1>
						</div>
<pre class="prettyprint" id="div-code">
import java.util.Scanner;

class Palindrome {

	String str;
	Scanner scan;

	void getValue() {

		scan = new Scanner(System.in);
		System.out.println("Check Palindrome String or not");
		System.out.println("\nEnter a String :");
		str = scan.nextLine();
	}

	void palindromeString() {
		boolean isPalindromeString = true;
		if (str == null) {
			isPalindromeString = false;
		} else {
			int length = str.length();
			for (int i = 0; i < length / 2; i++) {

				if (str.charAt(i) != str.charAt(length - i - 1))
					isPalindromeString = false;
			}
		}
		if (isPalindromeString)
			System.out.println(str + " is a Palindrome String");
		else
			System.out.println(str + " is a  not a Palindrome String");
	}

}

public class MainClass {

	public static void main(String args[]) {

		Palindrome obj = new Palindrome();

		obj.getValue();
		obj.palindromeString();
	}
}

</pre>
<div id="div-code-output"><b>Output</b><hr>Check Palindrome String or not

Enter a String :
abcdcba
abcdcba is a Palindrome String

Enter a String :
hello
hello is a  not a Palindrome String
</div>
<br />
<div class="addthis_native_toolbox"></div><jsp:include page="navigation_link.jsp" />
						</div>
						<jsp:include page="contentBottom.jsp" />
				<jsp:include page="suggestionProgramList2.jsp" />
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
