<!DOCTYPE html>
<html>
<head>
<title>Read Files from a Directory in Java </title>
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
				<h1> Write a program to get list of all files from a given directory?</h1></div>
<pre class="prettyprint" id="div-code">
import java.io.File;

public class FilesFromDirectory {
	public static void main(String a[]) {
		File file = new File("C:/MyDir/");
		
		File[] allFiles = file.listFiles();
		
		System.out.println("Total files in this directory : " + allFiles.length);
		
		for (File f : allFiles) {
			System.out.println(f.getName());
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Total files in this directory : 4
file1.txt
file2.txt
file3.pdf
image1.png
</div><br />
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

