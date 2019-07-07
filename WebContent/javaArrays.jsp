<!DOCTYPE html>
<html>
<head>
<title>Java Arrays Example</title>
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
						<h1>Java Arrays Programs:</h1>
					</div>
					<div id="div-question-home"
						onclick="location.href='simpleArraySorting.jsp';">Simple
						Array Sorting Program</div>
					<div id="div-question-home"
						onclick="location.href='reverseStringArrayExample.jsp';">Reverse a String Array Example</div>
					<div id="div-question-home"
						onclick="location.href='reverseIntegerArrayExample.jsp';">Reverse an Integer Array Example</div>
					<div id="div-question-home"
						onclick="location.href='stringToCharArrayExample.jsp';">String to char Array Example </div>	


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
