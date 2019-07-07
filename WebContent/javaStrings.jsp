<!DOCTYPE html>
<html>
<head>
<title>Java Strings Example</title>
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
					<br />
					<div style="margin: 15px 5px 5px 10px;">
						<h1>Java Strings Programs</h1>
					</div>
					<div id="topten">
						<ul>
							<li><a href="reverseString.jsp">Write a program to
									reverse a String?</a></li>
							<li><a href="stringReverseRecursively">Write a program
									reverse a string recursively?</a></li>

							<li><a href="duplicateCharFromString">How to print
									duplicate characters from String?</a></li>

							<li><a href="firstNonRepeatedChar">Write a program to
									print first non repeated character from String?</a></li>

							<li><a href="countCharInString">How to count occurrence
									of a given character in String?</a></li>

							<li><a href="duplicateCharRemoverExample">How to remove
									duplicate characters from String?</a></li>

							<li><a href="splitStringExample.jsp">How to split a
									String?</a></li>
							<li><a href="reverseStringArrayExample.jsp">How to
									reverse a String Array?</a></li>
							<li><a href="stringToCharArrayExample.jsp">How to create
									a char array from a String?</a></li>
							<li><a href="stringToDoubleExample.jsp">How to convert
									from String to Double?</a></li>
							<li><a href="stringToLongExample.jsp">How to convert
									from String to Long?</a></li>
						</ul>
						<br />
					<div class="addthis_native_toolbox"></div>
					<br />
					</div>
					
					<jsp:include page="contentBottom.jsp" />
					<jsp:include page="suggestionProgramList2.jsp" />
							
					
					
					<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */
	
								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/javaStrings"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "javaStrings"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d.createElement('script');
	
									s.src = '//javadocworld.disqus.com/embed.js';
	
									s.setAttribute('data-timestamp', +new Date());
									(d.head || d.body).appendChild(s);
								})();
							</script>
						
						</div>
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
