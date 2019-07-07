<!DOCTYPE html>
<html>
<head>
<title>Builder Design Pattern Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Builder design pattern in java Example" />
<meta name="keywords"
	content=" Builder design pattern java,Builder design pattern,builder , design pattern java, bulder design pattern example">
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
						<div id="code-question"><h1>Builder Design Pattern Example in Java </h1></div>
						<div id="code-answer">
							<p>Builder design pattern is used to construct complex object
								step by step before building the final object. We need builder
								design pattern when we have lot of parameters and some of them
								are mandatory to create object and others are optional. Else we
								can maintain many constructors to achieve the same, which is
								very complex to maintain.</p>
						</div>
<pre class="prettyprint" id="div-code">
public class BuilderPattern {

	public static void main(String args[]) {

		// Create the object using builder pattern

		Cake whiteCakeNonVeg = new Cake.Builder().sugar(1).butter(0.5).eggs(2)
				.vanila(2).bakingpowder(0.75).milk(0.5).build();

		// Don't need egg
		Cake whiteCakeVeg = new Cake.Builder().sugar(1).butter(0.5).vanila(2)
				.bakingpowder(1.75).milk(0.5).flour(2).build();

		System.out.println(whiteCakeNonVeg);
		System.out.println(whiteCakeVeg);
	}
}

class Cake {
	private final double milk;
	private final double sugar;
	private final double butter;
	private final int eggs;
	private final double bakingpowder;
	private final int vanila;
	private final double flour;

	// constructor should be private to enforce object creation through builder
	private Cake(Builder builder) {
		this.milk = builder.milk;
		this.sugar = builder.sugar;
		this.butter = builder.butter;
		this.eggs = builder.eggs;
		this.bakingpowder = builder.bakingpowder;
		this.vanila = builder.vanila;
		this.flour = builder.flour;

	}

	public static class Builder {
		private double milk;
		private double sugar;
		private double butter;
		private int eggs;
		private double bakingpowder;
		private int vanila;
		private double flour;

		public Builder milk(double cup) {
			this.milk = cup;
			return this;
		}

		public Builder sugar(double cup) {
			this.sugar = cup;
			return this;
		}

		public Builder butter(double cup) {
			this.butter = cup;
			return this;
		}

		public Builder eggs(int number) {
			this.eggs = number;
			return this;
		}

		public Builder vanila(int spoon) {
			this.vanila = spoon;
			return this;
		}

		public Builder bakingpowder(double spoon) {
			this.bakingpowder = spoon;
			return this;
		}

		public Builder flour(double cup) {
			this.flour = cup;
			return this;
		}

		// return fully build object
		public Cake build() {
			return new Cake(this);
		}
	}

	@Override
	public String toString() {
		return "Cake { milk=" + milk + "sugar=" + sugar + ", butter=" + butter
				+ ", eggs=" + eggs + ", vanila=" + vanila + ", bakingpowder="
				+ bakingpowder + ", flour=" + flour + '}';

	}

}
</pre>
<div id="div-code-output"><b>Output</b><hr>Cake { milk=0.5sugar=1.0, butter=0.5, eggs=2, vanila=2, bakingpowder=0.75, flour=0.0}
Cake { milk=0.5sugar=1.0, butter=0.5, eggs=0, vanila=2, bakingpowder=1.75, flour=2.0}</div>
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
									this.page.url = "http://www.javadocworld.com/builderDesignPattern"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "builderDesignPattern"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
