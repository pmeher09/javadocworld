<!DOCTYPE html>
<html>
<head>
<title>Immutable Class  Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="immutable class in java Example" />
<meta name="keywords"
	content="java immutableClass Example, immutable Class Example, immutable Class, immutableClassExample in java">
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
						<div id="code-question"><h1>Immutable Class Example in Java </h1></div>
						<div id="code-answer">
	<p>Immutable classes are the classes whose values never change once instantiated. There are many immutable classes i.e. String, Boolean, Byte, Short, Integer, Long, Float, Double etc . We can also create immutable class as below:</p>
 <ul><li>Declare the class final, so it can't be extended.</li>
<li>Make all the instance variables final and private. Fields declared private will not be accessible outside the class and making them final will ensure that you can not change them.</li>
<li>Don't provide any setter methods i.e. you have no option to change the value of the instance variable.</li>
<li>Perform cloning of objects in the getter methods to return a copy rather than returning the actual object reference.</li>
</ul>
<br />						
<b>Example to create Immutable class :</b>
</div>

<pre class="prettyprint" id="div-code">
 public final class Student {
	// all instance variable should be private and final
	private final String studentName;
	private final long studentId;
	private final Date dateOfBirth;

	public Student(String studentName, long studentId, Date dateOfBirth) {
		this.studentName = studentName;
		this.studentId = studentId;
		this.dateOfBirth = dateOfBirth;
	}

	//String is immutable
	public String getStudentName() {
		return studentName;
	}

	//Long is immutable
	public long getStudentId() {
		return studentId;
	}

	//Date is mutable, so you may need to clone it 
	public Date getDateOfBirth() {
		return (Date) dateOfBirth.clone();
	}
	
}  
</pre>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
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
									this.page.url = "http://www.javadocworld.com/immutableClassExample"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "immutableClassExample"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
