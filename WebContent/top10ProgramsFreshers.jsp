<!DOCTYPE html>
<html>
<head>
<title>Top 10 Java Programs - JavaDoc World</title>
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
						<h1>Top 10 Java Programs for Freshers:</h1>
						<hr class="style-light">
						<div style="text-align: right; font-size: 14px;">We have
							prepared the order based on our personal priority</div>
						<br />
					</div>
					<div id="topten">
						<ul>
							<li><a href="jdbcConnectionExample.jsp">How to create
									JDBC connection in Java?</a></li>
							<li><a href="reverseNumber.jsp">How to reverse a number
									in Java?</a></li>
							<li><a href="simpleArraySorting.jsp">Simple Array
									Sorting Program</a></li>
							<li><a href="decimalToBinaryExample.jsp">Write a program
									to convert from decimal to binary?</a></li>
							<li><a href="exceptionThrowsExample.jsp">Throws Keyword
									Example in Java</a></li>
							<li><a href="swapNumberWithOutThirdVariable.jsp">How to
									swap two numbers without using third variables?</a></li>
							<li><a href="fileInputStreamExample.jsp">Read a file in
									Java</a></li>
							<li><a href="reverseStringArrayExample.jsp">Reverse a
									String Array</a></li>
							<li><a href="threadRunnableExample.jsp">Create a Thread
									by Implementing Runnable interface</a></li>
							<li><a href="stringToLongExample.jsp">Convert from
									String to Long</a></li>
						</ul>
						<br />
						<div class="addthis_native_toolbox"></div>
					</div>
					<br /> <br />
					<div id="div-same-category-link"
						onclick="location.href='top10Programs';">TOP TEN
						PROGRAMS FOR 1 to 3 YEARS</div>
					<br />
					<div id="div-same-category-link"
						onclick="location.href='top10Programs3to5';">TOP TEN
						PROGRAMS FOR 3 to 5 YEARS</div>
					<br />
					<jsp:include page="contentBottom.jsp" />
					<div style="padding: 10px;">
						<div id="disqus_thread"></div>
						<script>
							/**
							 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
							 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
							 */

							var disqus_config = function() {
								this.page.url = "http://www.javadocworld.com/top10ProgramsFreshers"; // Replace PAGE_URL with your page's canonical URL variable
								this.page.identifier = "top10forfreshers"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
							};
							(function() { // DON'T EDIT BELOW THIS LINE
								var d = document, s = d.createElement('script');

								s.src = '//javadocworld.disqus.com/embed.js';

								s.setAttribute('data-timestamp', +new Date());
								(d.head || d.body).appendChild(s);
							})();
						</script>
						<noscript>
							Please enable JavaScript to view the <a
								href="https://disqus.com/?ref_noscript" rel="nofollow">comments
								powered by Disqus.</a>
						</noscript>
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
