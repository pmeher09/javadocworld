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
						<h1>Top 10 Java Programs for 3 to 5 Years:</h1>
						<hr class="style-light">
						<div style="text-align: right; font-size: 14px;">We have
							prepared the order based on our personal priority</div>
						<br />
					</div>
					<div id="topten">
						<ul>

							<li><a href="stringReverseRecursively">Reverse a String
									recursively in Java</a></li>
							<li><a href="evenOddThreadExamples">Print even and odd
									numbers using threads in java</a></li>
							<li><a href="factoryDesignPatternExample">Factory design
									pattern in Java</a></li>
							<li><a href="threadDeadLockExample">Thread Deadlock
									Example in Java</a></li>
							<li><a href="java7Features">What are the new features in Java 7</a></li>
							<li><a href="comparatorExample">Write a Comparator to
									compare students based upon their name and age</a></li>
							<li><a href="externalizationExample.jsp">Externalization
									Example</a></li>
							<li><a href="producerConsumerPrgram.jsp">Producer
									Consumer Example in Thread</a></li>
							<li><a href="arrayListExample">What is ArrayList,
									demonstrate mostly used methods of ArrayList</a></li>
							<li><a href="bubbleSorting.jsp">Bubble Sort Example in Java</a></li>
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
						onclick="location.href='top10Programs';">TOP TEN
						PROGRAMS FOR 1 to 3 YEARS</div>
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
								this.page.url = "http://www.javadocworld.com/top10Programs3to5"; // Replace PAGE_URL with your page's canonical URL variable
								this.page.identifier = "top10for3to5"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
