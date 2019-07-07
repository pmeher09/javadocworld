<!DOCTYPE html>
<html>
<head>
<title>Read a file in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Read a file in Java" />
<meta name="keywords"
	content="read a file in java,file,FileInputStream,javadocworld">
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
						<div id="code-question"><h1>FileInputStream example in Java to read a file</h1></div>
<pre class="prettyprint" id="div-code">
import java.io.IOException;
import java.io.FileInputStream;

public class FileInputStreamExample {
	public static void main(String[] args) throws IOException {

		FileInputStream fileInputStream = null;
		int content;

		try {
		  // Creates a new FileInputStream by opening a connection to an actual file
		  fileInputStream = new FileInputStream("C://readMe.txt");

		  System.out.println("File size(Byte to read):"+fileInputStream.available()+"byte");
		  
		  // read until it reach end of the file
		  while ((content = fileInputStream.read()) != -1) {
			// convert from int to char and print it
			System.out.print((char) content);
		  }
		  
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			// releases all system resources from the streams
			if (fileInputStream != null)
				fileInputStream.close();
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>File size(Byte to read): 53 byte
Hello, you are reading file content.
Before EOF..</div>
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
