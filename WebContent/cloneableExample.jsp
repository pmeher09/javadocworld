<!DOCTYPE html>
<html>
<head>
<title>Object cloning Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="cloneable class in java Example" />
<meta name="keywords"
	content="cloneableExample in java, cloneable, object cloning ">
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
						<div id="code-question"><h1>Cloneable Interface in Java - Object Cloning </h1></div>
						<div id="code-answer">
<p>To make a class cloneable you need to implements the Cloneable interface. Cloneable interface is an marker interface, so you do not need to add any methods to the class.</p><br />
<p>You need to overwrite the Object class clone() methods, the clone( ) method generates a duplicate copy of the object on which it is called. Only classes that implement the Cloneable interface can be cloned.
<p>During clone() method call you need to handle CloneNotSupportedException using try catch blocks.</p><br />
<p>The clone object has its own space in the memory where it copies the content of the original object. That's why when we change the content of original object after cloning, the changes does not reflect in the clone object.</p>
<br />
<b>Example to create Cloneable class :</b>			
						</div>
<pre class="prettyprint" id="div-code">
public class CloneableExample {
	public static void main(String[] args) {
		Plane p1 = new Plane("Emirates Airlines", "AirBus", 400);
		Plane p2 = null;

		try {
			p2 = (Plane) p1.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
	
		System.out.println("Plane1 : "+p1.name +" ,  "+p1.type+" ,  "+ p1.capacity);
		System.out.println("Plane2 : "+p2.name +" ,  "+p2.type+" ,  "+ p2.capacity);
	}
}

class Plane implements Cloneable {

	 String name;
	 String type;
	 int capacity;

	Plane() {
	}

	public Plane(String name, String type, int capacity) {
		this.name = name;
		this.type = type;
		this.capacity = capacity;
	}

	// Overriding clone() method of Object class
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return (Plane) super.clone();
	}
	
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Plane1 : Emirates Airlines ,  AirBus ,  400
Plane2 : Emirates Airlines ,  AirBus ,  400
</div>
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
									this.page.url = "http://www.javadocworld.com/cloneableExample"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "cloneableExample"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
