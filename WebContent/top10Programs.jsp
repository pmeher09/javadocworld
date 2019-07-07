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
						<h1>Top 10 Java Programs for 1 to 3 Years:</h1>
						<hr class="style-light">
						<div style="text-align: right; font-size: 14px;">We have
							prepared the order based on our personal priority</div>
						<br />
					</div>
					<div id="topten">
						<ul>
							<li><a href="fibonacciSeriesExample.jsp">Write a program
									to print FibonacciSeries in Java </a></li>
							<li><a href="palindromeStringExample.jsp">Write a
									program to check if an input String is Palindrome or not</a></li>
							<li><a href="evenOddThreadExamples">Print even and odd
									numbers using threads in java</a></li>
							<li><a href="singletonClassExample">Singleton class
									Program in Java</a></li>
							<li><a href="armstrongNumber.jsp">Write a java program
									to check if a number is Armstrong number or not</a></li>
							<li><a href="comparableExample">Write a Comparable to
									compare students based upon their age</a></li>
							<li><a href="bubbleSorting.jsp">Bubble Sort Program in Java</a></li>
							<li><a href="		
										iteratorExamples">Write a program to
									iterate a list in Java using Iterator</a></li>
							<li><a href="serializationExample.jsp">Write a  Serialization and Deserialization Program</a></li>
							<li><a href="arrayListExample">What are the advantages of ArrayList, what are the mostly used methods of ArrayList</a></li>
						</ul>
						<br />
					<div class="addthis_native_toolbox"></div>
					</div>
					
					<br /> <br />
					<div id="div-same-category-link"
						onclick="location.href='top10ProgramsFreshers';">TOP TEN
						PROGRAMS FOR FRESHERS</div>
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
								this.page.url = "http://www.javadocworld.com/top10Programs"; // Replace PAGE_URL with your page's canonical URL variable
								this.page.identifier = "top10for1to3"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
