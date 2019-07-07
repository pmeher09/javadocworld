<!DOCTYPE html>
<html>
<head>
<title>HashSet Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Hash Set Java Example" />
<meta name="keywords"
	content="hashset in java ">
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
						<div id="code-question"><h1>HashSet Example in Java</h1>
						</div>
						<div id="code-answer">
						<ul>
						<li>HashSet extends AbstractSet and implements the Set interface.</li>
						<li>HashSet does not hold any duplicate elements, contains only unique elements.</li>
						<li>HashSet is non-synchronized.</li>
						<li>HashSet doesn't maintain any order like HashMap.</li>
						<li>Iterator returned by HashSet is fail-fast Iterator, it will throw ConcurrentModificationException if iterator is modified after it's creation. </li>
						</ul>
						<br />
						<p>In this example we will demonstrate mostly used methods of HashSet.</p>
						</div>
<pre class="prettyprint" id="div-code">
import java.util.HashSet;
import java.util.Iterator;

public class HashSetExample {
	public static void main(String[] args) {
		// Creating a HasSet to add strings
		HashSet&lt;String&gt; myHashSet = new HashSet&lt;String&gt;();
		myHashSet.add("Element1");
		myHashSet.add("Element2");
		myHashSet.add("Element3");
		myHashSet.add("Element4");

		// Printing the elements it contains
		System.out.println(myHashSet);

		// Iterating each element of myHashSet using Iterator
		Iterator&lt;String&gt; iterator = myHashSet.iterator();
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}

		// contains method check whether the set contains the specified element
		// or not
		System.out.println(myHashSet.contains("Element1")); // true
		System.out.println(myHashSet.contains("Element5"));// false

		// Print the size of the set
		System.out.println("size: " + myHashSet.size());

		// Remove an element from the set
		myHashSet.remove("Element1");

		System.out.println("After removing Element1 : " + myHashSet);

		// Removes all of the elements from this set
		myHashSet.clear();
		System.out.println("After calling clear() : " + myHashSet);
		
		//isEmpty() Returns true if the set contains no elements
		System.out.println("is empty :"+myHashSet.isEmpty());
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>[Element1, Element2, Element3, Element4]
Element1
Element2
Element3
Element4
true
false
size: 4
After removing Element1 : [Element2, Element3, Element4]
After calling clear() : []
is empty :true
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
