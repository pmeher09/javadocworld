<!DOCTYPE html>
<html>
<head>
<title>Singleton class in java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Singleton class in java Example" />
<meta name="keywords"
	content="singleton design pattern,Singleton class in java ">
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
						<div id="code-question"><h1>Singleton Class Example in Java </h1></div>
						<div id="code-answer"><p>Singleton is a class which has only one instance in whole application, it provides a public static method getInstance() to access the instance.
There are many classes in JDK which is implemented using Singleton pattern like java.lang. Runtime, java.awt.Desktop, java.awt.Toolkit  etc.</p>
<p><br />
<b>Steps to create a Singleton class:</b></p>
<ul>
<li>Create a private constructor to restrict instantiation of the class from other classes.</li>
<li>Create one private static instance of the class.</li>
<li>Create one public static method that returns the instance of the class.</li>
</ul></div>
						<pre class="prettyprint" id="div-code">
class MySingletonClass {
	private static MySingletonClass mySingletonObj;

	// Create a private Constructor to prevents any other class from
	// instantiating
	private MySingletonClass() {
	}

	// Create a static instance to get the instance
	public static MySingletonClass getInstance() {
		if (mySingletonObj == null) {
			mySingletonObj = new MySingletonClass();
		}
		return mySingletonObj;
	}

	public void hello() {
		System.out.println("This is hello method from MySingletonClass");
	}
}

public class SingletonExample {
	public static void main(String[] args) {
		MySingletonClass st = MySingletonClass.getInstance();
		st.hello();
	}

}
						</pre>
<div id="div-code-output"><b>Output</b>
<hr>This is hello method from MySingletonClass</div>
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
									this.page.url = "http://www.javadocworld.com/singletonClassExample"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "singletonClassExample"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
