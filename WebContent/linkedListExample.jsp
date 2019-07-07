<!DOCTYPE html>
<html>
<head>
<title>LinkedList Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="LinkedList Example in Java" />
<meta name="keywords"
	content="LinkedList in java, collections ">
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
						<div id="code-question"><h1>LinkedList Example in Java</h1></div>
						<div id="code-answer">
						<ul>
						<li>LinkedList is an implementation of List interface and extends AbstractSequentialList. </li>
						<li>LinkedList also implements Deque interface and has the implementation of its methods addFirst(E e), addLast(E e), removeFirst(E e), removeLast(E e) etc. </li> 
						<li>LinkedList provides methods to add and remove element at the beginning and end of the list. </li>
						<li>It provides a linked-list data structure.</li>
						<li>LinkedList is non-synchronized.</li>
						<li>LinkedList maintain the elements insertion order.</li>
						<li>LinkedList allows duplicate elements.</li>
						</ul>
						<br />
						<p>In this example we will demonstrate mostly used methods of LinkedList.</p>
						</div>
<pre class="prettyprint" id="div-code">
package com.collections;

import java.util.LinkedList;

public class LinkedListExample {
	public static void main(String[] a) {

		LinkedList&lt;String&gt; linkedList = new LinkedList&lt;String&gt;();

		// add elements to the list
		linkedList.add("TINA");
		linkedList.add("RAM");
		linkedList.add("JOHN");

		// print list elements
		System.out.println(linkedList);

		// Get the size of the list
		System.out.println("Size is: " + linkedList.size());

		// get elements by index
		System.out.println("Element at index 2: " + linkedList.get(2));

		// add elements at a specific index
		linkedList.add(2, "PLAY");
		System.out.println(linkedList);

		// Inserts the specified element at the beginning of this list
		linkedList.addFirst("FIRST-ELEMENT");

		// Appends the specified element to the end of this list.
		linkedList.addLast("LAST-ELEMENT");

		System.out.println(linkedList);

		// Removes and returns the first element from this list.
		System.out.println("removeFirst(): " + linkedList.removeFirst());

		// Removes and returns the last element from this list.
		System.out.println("removeLast(): " + linkedList.removeLast());

		System.out.println(linkedList);

	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>[TINA, RAM, JOHN]
Size is: 3
Element at index 2: JOHN
[TINA, RAM, PLAY, JOHN]
[FIRST-ELEMENT, TINA, RAM, PLAY, JOHN, LAST-ELEMENT]
removeFirst(): FIRST-ELEMENT
removeLast(): LAST-ELEMENT
[TINA, RAM, PLAY, JOHN]
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
