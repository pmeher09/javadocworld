<!DOCTYPE html>
<html>
<head>
<title>Publish your articles</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" class in java Example" />
<meta name="keywords" content="java ">
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
					<br /><br />
						<div id="code-question">
							<h1 style=" text-align: left;">Publish Your Articles in javaqueue.com</h1>
						</div>javaqueue
						<hr>
						<br /><br />
						<div id="code-answer">
						
							<div id="div-same-category-link">
							<p>If you want to publish your java articles in our website ,
								please contact us at <a href="mailto:info.javadocworld@gmail.com">info.javaqueue@gmail.com</a></p>
							</div>
							<br /><br />
							<b style="margin-left: 10px;">Approved Ones Will Be Rewarded</b>
							<br /><br />
							<ul>
								
								<li>Once after submitting the article, it will be reviewed
									and the payment for it will be conveyed to the author.</li>
								<li>The amount we pay depends on length and quality of the
									article.</li>	
							</ul>
							<br /><br />
							<b style="margin-left: 10px;">The Article Should be: </b>
							<br /><br />
							<ul>
								<li>The article should be unique, never-published-before,
									and very very useful to java reader.</li>
								<li>The article should be purely your work.</li>
								<li>Once the article is published at javaqueue.com, do
									not republish it in another website.</li>
								<li>We reserve the right to make editorial changes on
									content.</li>
								<li>We will review all posts submitted and provide you
									feedback immediately.</li>
								<li>Please, do not send duplicated content to get it
									approved immediately.</li>
								<li>Please send it in word format.</li>	
							</ul>

						</div>
</div>
						<jsp:include page="contentBottom.jsp" />

						<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */

								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/pubilish_your_article"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "pubilish_your_article"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d
											.createElement('script');

									s.src = '//javadocworld.disqus.com/embed.js';

									s.setAttribute('data-timestamp',
											+new Date());
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
