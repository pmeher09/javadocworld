<!DOCTYPE html>
<html>
<head>
<title>Read a File in Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Read a File in Java" />
<meta name="keywords"
	content="Read a File in Java, read a file using RuffrReader in java">
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
						<div id="code-question"><h1>Read a File in Java Example using BufferReader</h1></div>
<pre class="prettyprint" id="div-code">
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ReadMyFileExample {

	public static void main(String[] args) {

		// Use StringBuffer to append the file content
		StringBuffer myFileContents = new StringBuffer();

		BufferedReader br = null;
		String line = null;

		try {
			File file = new File("C:\\readMe.txt");

			br = new BufferedReader(new FileReader(file));

			while ((line = br.readLine()) != null) {
				myFileContents.append(line + "\n");
			}

			// print the file content
			System.out.println(myFileContents.toString());

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (br != null)
					br.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}

	}
}

						</pre>
						<div id="div-code-output"><b>Output</b><hr>Hello, you are reading file content.
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