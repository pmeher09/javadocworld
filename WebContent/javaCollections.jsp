<!DOCTYPE html>
<html>
<head>
<title>Java Collections Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Collections Java Examples" />
<meta name="keywords"
	content="Java Collections,ArrayList, LinkedList, Vector, HashSet,
			LinkedHashSet, TreeSet, HashMap, LinkedHashMap, TreeMap, Comparable,
			Comparator, Iterator">
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
						<h1>Java Collections Examples</h1>
					</div>
					<div id="topten">
						<ul>
							<li><a href="arrayListExample">ArrayList Example in Java</a></li>

							<li><a href="linkedListExample">LinkedList Example in
									Java</a></li>

							<li><a href="vectorExample">Vector Example in Java</a></li>

							<li><a href="hashSetExample">HashSet Example in Java</a></li>

							<li><a href="linkedHashSetExample">LinkedHashSet Example
									in Java</a></li>

							<li><a href="treeSetExample">TreeSet Example in Java</a></li>


							<li><a href="hashMapExample">HashMap Example in Java</a></li>

							<li><a href="linkedHashMapExample">LinkedHashMap Example
									in Java</a></li>

							<li><a href="treeMapExample">TreeMap Example in Java</a></li>

							<li><a href="comparatorExample">Comparator Example in
									Java</a></li>

							<li><a href="comparableExample">Comparable Example in
									Java</a></li>

							<li><a href="iteratorExamples">Iterator Example in Java</a></li>

							<li><a href="readOnlyList">How to make a list read only?</a></li>
						</ul>
					</div>
					<br />
					<div class="addthis_native_toolbox"></div>
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
