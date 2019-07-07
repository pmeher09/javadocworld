<!DOCTYPE html>
<html>
<head>
<title>Java Generics Concepts and Examples</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Generics in java" />
<meta name="keywords"
	content="Generics in java,generics,java 5 features ">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/imtech_pager.js"></script>
<!-- <script type="text/javascript">
	var pager = new Imtech.Pager();

	$(document).ready(function() {

		pager.paragraphsPerPage = 5; // set amount elements per page

		pager.pagingContainer = $('#site-content'); // set of main container

		pager.paragraphs = $('div.z', pager.pagingContainer); // set of required containers

		pager.showPage(1);

	});

</script> -->

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
						<br />
						<div id="code-question">
							<h1>  &nbsp;What are Java generics?</h1>
						</div><div style="margin: 10px; line-height: 1.45;">
<p>						
Ordinary classes and methods work with specific types: either primitives or class types.
If you are writing code that might be used across more types, this rigidity can be overconstraining.
</p><br /><p>						
Java Generics are a language feature that  allows for definition and use of generic types and methods.
Generic types or methods differ from regular types and methods in that they have type parameters. 
</p><br /><p>
Examples of generic types can be found in the collection framework of the J2SE 5.0 platform 
libraries. A class like LinkedList&lt;E&gt; is a generic type.  It has a type parameter
E that represents the type of the elements stored in the list.  Instead of just using a LinkedList,
not saying anything about the type of elements the list contains, we can use a LinkedList&lt;String&gt; 
or a LinkedList&lt;Integer&gt; , thereby specifying that we mean a list of strings or integral values 
respectively.
</p><br /><p>
Generic types are instantiated to form parameterized types  by providing actual type 
arguments that replace the formal type parameters. 
</p><br /><p>
<i>Point to remember :We can have an implementation of one generic class
that can be instantiated for a variety of types.</i>
</p><br /><p>
<b>For your better understanding execute each code provided in the examples!</b></p>
<pre class="prettyprint" id="div-code">
package com.generics;

import java.util.*;

public class RandomList&lt;T&gt; {
	private ArrayList&lt;T&gt; storage = new ArrayList&lt;T&gt;();
	private Random rand = new Random(47);

	public void add(T item) {
		storage.add(item);
	}

	public T select() {
		return storage.get(rand.nextInt(storage.size()));
	}

	public static void main(String[] args) {
		RandomList&lt;String&gt;rs = new RandomList&lt;String&gt;();
		for (String s : ("The quick brown fox jumped over "
				+ "the lazy brown dog").split(" "))
			rs.add(s);
		for (int i = 0; i < 11; i++)
			System.out.print(rs.select() + " ");
	}
}</pre>
<br /><br />					
<b><u>Why we should use Generics</u></b>
			<br /><br />
<i><font color="">Error detection during compilation</font></i><br /><p>		
Using a parameterized type such as LinkedList&lt;String&gt;, instead of LinkedList, enables the compiler to
perform more type checks and requires fewer dynamic casts at runtime.So errors will be detected 
earlier,in the sense that they are reported at compile-time by means of a compiler error message 
rather than at runtime by means of an exception. Consider the example of a LinkedList&lt;String&gt;. </p>
<br />
<p>The type LinkedList&lt;String&gt;  expresses that the list is a homogenous list of elements of type String.
Based on the stronger information the compiler performs type checks in order to ensure that a 
LinkedList&lt;String&gt;  contains only strings as elements. Any attempt to add an alien element
is rejected with a compiler error message.</p><br />
Example (using a parameterized type): 
<pre class="prettyprint" id="div-code">
			LinkedList&lt;String&gt; list = new LinkedList&lt;String&gt;();
			list.add("abc");       // fine
			list.add(new Date()); // error
			</pre>
<br />
<p>
Using a simple LinkedList,there is no knowledge and no guarantee regarding the type of the element 
retrieved.All retrieval methods return  an Object reference, which must be cast down to the actual
type of the element retrieved.<br/><br />Same example (using a non-parameterized type): </p>
<pre class="prettyprint" id="div-code">
			LinkedList list = new LinkedList();
			list.add("abc"); 
			String s = (String)list.get(0);  // cast required
		</pre><p>					
The cast would fail at runtime with a ClassCastException in case the element retrieved is not of type 
String. <br />
This type of runtime failure cannot happen with a parameterized list because the compiler already
prevents insertion of an alien element into the sequence
</p>							</div>
						<br />
						<div class="addthis_native_toolbox"></div>
						
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