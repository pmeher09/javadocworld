<!DOCTYPE html>
<html>
<head>
<title>Vector Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Vector Java Example" />
<meta name="keywords"
	content="Vector in java, Vector,List, collection ">
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
						<div id="code-question"><h1>Vector Example in Java</h1></div>
						<div id="code-answer">
						<ul>
						<li>Vector implements List Interface and extends AbstractList.</li> 
						<li>Vector is <b>synchronized</b>.</li>
						<li>To display Vector elements we can use either Enumerator or Iterator.</li>
						<li>Vector also maintains insertion order like ArrayList.</li>
						<li>Vector allows duplicate elements like ArrayList.</li>
						</ul>
						<br />
						<p>In this example we will demonstrate mostly used methods of Vector.</p>
						</div>
<pre class="prettyprint" id="div-code">
import java.util.Enumeration;
import java.util.Vector;

public class LinkedListExample {
	public static void main(String[] a) {

		Vector&lt;String&gt; vector = new Vector&lt;String&gt;();

		// adding elements to the vector
		vector.add("TINA");
		vector.add("RAM");
		vector.add("JOHN");

		// print vector elements
		System.out.println(vector);

		// Get the size of the vector
		System.out.println("Size is: " + vector.size());

		// get elements by index
		System.out.println("Element at index 2: " + vector.get(2));

		// add elements at a specific index
		vector.add(2, "PLAY");

		System.out.println(vector);

		System.out.println("Remove index 2 element: "+vector.remove(1));
		
		// To display Vector elements we can use Enumerator/Iterator 
		Enumeration enmtn = vector.elements();
		System.out.print("Elements are: ");
		while (enmtn.hasMoreElements()) {
			System.out.print(enmtn.nextElement() + " ");
		}

		System.out.println("\nGet the first Element: "+vector.firstElement());
		System.out.println("Get the last Element: "+vector.lastElement());

		
	}
}

</pre>
<div id="div-code-output"><b>Output</b><hr>[TINA, RAM, JOHN]
Size is: 3
Element at index 2: JOHN
[TINA, RAM, PLAY, JOHN]
Remove index 2 element: RAM
Elements are: TINA PLAY JOHN 
Get the first Element: TINA
Get the last Element: JOHN
						</div>
						<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
					<jsp:include page="suggestionProgramList1.jsp" />
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
