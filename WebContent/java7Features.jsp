<!DOCTYPE html>
<html>
<head>
<title>New Features  in Java 7</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="New Features  in JDK 7 with Example" />
<meta name="keywords" content="java7, jdk7, jdk new features, java7 new features">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
						<div id="code-question">
							<h1>New Features  in Java 7 with examples</h1>
							<div id="code-answer">
							
<h2>1. Diamond Syntax &lt;&gt; for type inference</h2>
<br />
<p>
Diamond operator &lt;&gt; is a new Java 7 feature which provides type inference while creating object of Generic classes.</p> 
<br />
<h3>Prior JDK 7</h3>
<pre class="prettyprint" id="div-code">
List&lt;Integer&gt; empList = new ArrayList&lt;Integer&gt;();
Set&lt;String&gt; empSet =  new HashSet&lt;String&gt;();
Map&lt;String, List&lt;String&gt;&gt; students =  new HashMap&lt;String, List&lt;String&gt;&gt;();
</pre>
<h3>In JDK 7</h3>
<pre class="prettyprint" id="div-code">
List&lt;Integer&gt; empList = new ArrayList&lt;&gt;();
Set&lt;String&gt; empSet =  new HashSet&lt;&gt;();
Map&lt;String, List&lt;String&gt;&gt; students =  new HashMap&lt;&gt;();
</pre>
<br /><br />


 
<h2>2. Strings in Switch Statements</h2>
<br />

<p>You can use a String object in a switch statement expression. Prior JDK 7, only integral types can be used as selector for switch-case statement. In JDK 7, you can use a String object as the selector.
For Example-</p>
<br />

<h3>Prior JDK7:</h3>
<pre class="prettyprint" id="div-code">
if (language.equals("Java")) {
	System.out.println("Java");
} else if (language.equals("C++")) {
	System.out.println("C++");
} else if (language.equals("PHP")) {
	System.out.println("PHP");
} else if (language.equals("Groovy")) {
	System.out.println("Groovy");
}
</pre>

<h3>In JDK7:</h3>
<pre class="prettyprint" id="div-code">
switch (language) {
	case "Java":
		System.out.println("Java");
		break;
	case "C++":
		System.out.println("C++");
		break;
	case "PHP":
		System.out.println("PHP");
		break;
	case "Groovy":
		System.out.println("Groovy");
		break;
}
</pre>
<br />
<h2>3. Binary Literals</h2><br />

<p>Starting Java7, all the number types (byte, short, int, long) can be expressed using the binary number system. In order to do same, add the prefix 0b or 0B to the number as shown in following examples. This could be helpful in getting better visibility when doing the bit level operations:</p>

<pre class="prettyprint" id="div-code">
//byte value (8-bit) expressed in binary number system
byte numByte = (byte) 0b10010001;

//short value (16-bit) expressed in binary number system
short numShort = (short) 0b1001000100011110;

//int value (32-bit) expressed in binary number system
int numInt =  0b10010001000111101010101001010101;

//long value (64-bit) expressed in binary number system
long numLong =  0b1001000100011110101010100101010110010001000111101010101001010101L;

</pre>
<br /><br />
<h2>4. Catching Multiple Exception Type in Single Catch Block</h2>
<br />
<p>In this feature, now you can catch multiple exceptions in single catch block. Before java 7, you was restricted to catch only one. To specify the list of expected exceptions a pipe ('|') character is used.</p>
<br />
<h3>Prior JDK7:</h3>
<pre class="prettyprint" id="div-code">
try
{
   //Do some processing which throws Exception
}catch(NullPointerException ex1| IndexOutOfBoundsException ex)
{
       throw ex1;
}
catch(IndexOutOfBoundsException ex2)
{
       throw ex2;
}
</pre>

<h3>In JDK7 :</h3>
<pre class="prettyprint" id="div-code">
try
{
   //Do some processing which throws Exception
}
//You can catch multiple exception added after 'pipe' character
catch(NullPointerException | IndexOutOfBoundsException ex)
{
       throw ex;
}
</pre>
<br /><br />
<h2>5. The try-with-resources Statement</h2><br />
<p>
One of the Java 7 features is try-with-resources statement for automatic resource management. A resource is an object that must be closed once your program is done using it, like a File resource or JDBC resource for database connection or a Socket connection resource. Before Java 7, there was no auto resource management and we should explicitly close the resource once our work is done with it.
</p><br />
<h3>Prior JDK7 :</h3>
<pre class="prettyprint" id="div-code">
try{
    //open resources like File, Database connection, Sockets etc
} catch (FileNotFoundException e) {
    // Exception handling like FileNotFoundException, IOException etc
}finally{
    // close resources
}
</pre>
<h3>In JDK7 :</h3>
<pre class="prettyprint" id="div-code">
try(// open resources here){
    // use resources
} catch (FileNotFoundException e) {
    // exception handling
}
</pre>
<br /><br />
<h2>6. G1 Garbage Collector</h2><br />
<p>
JDK 7 introduced a new Garbage Collector known as G1 Garbage Collection, which is short form of garbage first. G1 garbage collector performs clean-up where there is most garbage. To achieve this it split Java heap memory into multiple regions as opposed to 3 regions in the prior to Java 7 version (new, old and permgen space). It's said that G1 is quite predictable and provides greater through put for memory intensive applications.
</p>
							<br /><br />
							
							</div>
						</div>
						<br />
						<div class="addthis_native_toolbox"></div>
						<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
					<jsp:include page="suggestionProgramList3.jsp" />
					<br />
					<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */
	
								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/java7Features"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "java7Features"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
