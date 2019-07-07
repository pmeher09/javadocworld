<!DOCTYPE html>
<html>
<head>
<title>Best Java Books</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Top 5 Java Books" />
<meta name="keywords"
	content=" best java books, top java books, top 5 java books">
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
					<div id="books">
					<jsp:include page="top_add.html" />
						<br />
						<h1>
						Best 5 Books For Learning Java</h1>
						<hr class="style-light">
						<div style="text-align: right; font-size: 14px;">We have prepared the order based on our personal priority</div>
						<br /> 
						<h3>1. SCJP Sun Certified Programmer for Java 6</h3>
						<div class="div-book">
						<a target="_blank"
							href="http://www.amazon.com/gp/product/0071591060/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0071591060&linkCode=as2&tag=javahungr-20"><img
							src="images/books/scjp5kathysierabook.jpg"
							alt="SCJP Sun Certified Programmer for Java 6" height="240px;" width="175px;"> </a>
						<p><strong>Author : </strong><br />Bert Bates / Kathy Sierra</p><br />
						<p><strong>Description :</strong></p><p>This book is perfect if you are preparing for
							Java Certification Exam or preparing for interviews or wants to
							master in Core Java.</p>
						</div>	
						<h3>2 .The Java Language Specification, Third Edition</h3>
						<div class="div-book">
						<a target="_blank"
							href="http://docs.oracle.com/javase/specs/"><img
							src="images/books/javaLanguageSpecificationBook.jpg"
							alt="The Java Language Specification, Third Edition"
							height="240px;" width="175px;"> </a>
						<p><strong>Author :</strong> <br />James Gosling, Bill Joy, Guy Steele, Gilad Bracha</p><br />
						<p><strong>Description :</strong></p><p> Written by the inventors of the Java Language
						Specification. This book provides complete and detailed coverage
						of the Java programming language. </p>
						</div>
						
						<h3>3. Effective Java (2nd edition)</h3>
						<div class="div-book">
						<a
							target="_blank"
							href="http://www.amazon.com/gp/product/0321356683/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321356683&linkCode=as2&tag=code0ac-20"><img
							src="images/books/effictive_javaBook.jpg"
							alt="Effective Java (2nd edition)" height="240px;" width="175px;">
						</a>
						<p><strong>Author :</strong> <br />Joshua Bloch</p><br /><p><strong> Description :</strong></p><p>This book is perfect if you have
						some experience in Java, this book teach you how to write code
						efficiently and correctly. </p>
						</div>
						
						<h3>4. Thinking in Java (4th edition)</h3>
						
						<div class="div-book">
						<a target="_blank"
							href="http://www.amazon.com/gp/product/0131872486/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0131872486&linkCode=as2&tag=code0ac-20"><img
							src="images/books/thinkingOfJavaBook.jpg"
							alt="Thinking in Java (4th edition)" height="240px;" width="175px;"> </a>
						<p><strong>Author :</strong> <br />Bruce Eckel </p><br /><p><strong>Description :</strong></p><p> Whether you are absolutely new
						to Java, or an experienced Java developer, you also will find this
						book a useful learning material. </p></div>
						
						<h3>5. Introduction to Programming Using Java, Sixth Edition</h3>
						<div class="div-book">
						<a target="_blank"
							href="http://www.amazon.in/Programming-Introduction-Using-Java/dp/1441419764/ref=sr_1_3?s=books&ie=UTF8&qid=1446232016&sr=1-3&keywords=David+J.+Eck"><img
							src="images/books/introductionToProgramingJavaBook.jpg"
							alt="Introduction to Programming Using Java, Sixth Edition"
							height="240px;" width="175px;"> </a>
						<p><strong>Author :</strong><br />David J. Eck </p><br /><p><strong>Description :</strong></p><p> Good book for java beginners,
						and might also be useful for experienced programmers. </p></div>
						<hr class="style-dark-light">
						<div class="addthis_native_toolbox"></div>
						<hr class="style-dark-light">
						<br />
											<br />
<jsp:include page="contentBottom.jsp" />
						<br /><br />
						
						<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */
	
								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/javaBooks"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "javaBooks"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
