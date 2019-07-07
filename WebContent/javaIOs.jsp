<!DOCTYPE html>
<html>
<head>
<title>Java I/O and Exceptions Examples</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
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
					<div style="margin: 15px 5px 5px 10px;">
						<h1>Java I/O & Exceptions Programs:</h1>
					</div>
					<div id="div-question-home"
						onclick="location.href='getFilesFromDirectory.jsp';">Write a
						program to get list of all the files from a given directory?</div>
					<div id="div-question-home"
						onclick="location.href='fileInputStreamExample.jsp';">Read a
						file in Java</div>
					<div id="div-question-home"
						onclick="location.href='copyFileExample.jsp';">Copy content
						from one file to another file Example</div>
					<div id="div-question-home"
						onclick="location.href='readFileBufferedReaderExample.jsp';">Read
						a File in Java using BufferReader.</div>
					<div id="div-question-home" onclick="location.href='serializationExample.jsp';">Serialization
						Example</div>
					<div id="div-question-home" onclick="location.href='externalizationExample.jsp';">Externalization
						Example</div>

					<div id="div-question-home"
						onclick="location.href='exceptionThrowsExample.jsp';">Throws
						Keyword Example in Java.</div>
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
