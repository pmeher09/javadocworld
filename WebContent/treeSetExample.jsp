<!DOCTYPE html>
<html>
<head>
<title>TreeSet Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="TreeSet Example in Java" />
<meta name="keywords"
	content="treeSet in java, collections ">
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
						<div id="code-question"><h1>TreeSet Example in Java</h1></div>
						<div id="code-answer">
						<ul>
						<li>TreeSet sorts the elements in the ascending order.</li> 
						<li>TreeSet extends AbstractSet and implements the NavigableSet interface.</li>
						<li>TreeSet does not hold any duplicate elements, contains only unique elements like HashSet.</li>
						<li>TreeSet is non-synchronized.</li>
						<li>Iterator returned by TreeSet is fail-fast Iterator like HashSet and LinkedHashSet, it will throw ConcurrentModificationException if iterator is modified after it's creation. </li>
						</ul>
						<br />
						<p>In this example we will demonstrate mostly used methods of TreeSet.</p>
						</div>
<pre class="prettyprint" id="div-code">
import java.util.Iterator;
import java.util.TreeSet;

public class TreeSetExample {
	public static void main(String[] args) {
	
		// Creating a TreeSet to add strings
		TreeSet&lt;String&gt; myTreeSet = new TreeSet&lt;String&gt;();
		myTreeSet.add("Element1");
		myTreeSet.add("Element2");
		myTreeSet.add("Element3");

		// Printing the elements it contains
		System.out.println(myTreeSet);

		// Iterating each element of myTreeSet using Iterator
		Iterator&lt;String&gt; iterator = myTreeSet.iterator();
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}
		
		myTreeSet.add("Element6");
		myTreeSet.add("Element5");
		myTreeSet.add("Element4");
		
		// TreeSet maintains sorting order of elements, 
		//note:String class implements Comparable interface and overwrite compareTo method
		System.out.println(myTreeSet);
		// above line prints : [Element1, Element2, Element3, Element4, Element5, Element6]
		
		//Returns the first or lowest element of the set.
		System.out.println("First Element: "+myTreeSet.first());
		
		//Returns the last  or highest element of the set.
		System.out.println("Last Element: "+myTreeSet.last());
		
		// contains method check whether the set contains the specified element
		// or not
		System.out.println(myTreeSet.contains("Element1")); // true
		System.out.println(myTreeSet.contains("Element9"));// false

		// Print the size of the set
		System.out.println("size: " + myTreeSet.size());

		// Remove an element from the set
		myTreeSet.remove("Element1");

		System.out.println("After removing Element1 : " + myTreeSet);

		// Removes all of the elements from this set
		myTreeSet.clear();
		System.out.println("After calling clear() : " + myTreeSet);
		
		//isEmpty() Returns true if the set contains no elements.
		System.out.println("is empty :"+myTreeSet.isEmpty());
	}
}

</pre>
<div id="div-code-output"><b>Output</b><hr>[Element1, Element2, Element3]
Element1
Element2
Element3
[Element1, Element2, Element3, Element4, Element5, Element6]
First Element: Element1
Last Element: Element6
true
false
size: 6
After removing Element1 : [Element2, Element3, Element4, Element5, Element6]
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
