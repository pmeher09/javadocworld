<!DOCTYPE html>
<html>
<head>
<title>LinkedHashMap Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="LinkedHashMap Java Example" />
<meta name="keywords"
	content="LinkedHashMap in java, collections, map ">
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
						<div id="code-question"><h1>LinkedHashMap Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.LinkedHashMap;
import java.util.Set;

public class LinkedHashMapExample {
	public static void main(String[] args) {
		// Creating an HashMap key is Integer type and value is String type
		LinkedHashMap&lt;Integer, String&gt; myLinkedHashMap = new LinkedHashMap&lt;Integer, String&gt;();
		
		//adding key-value pair to LinkedHashMap
		myLinkedHashMap.put(1, "Element1");
		myLinkedHashMap.put(2, "Element2");
		myLinkedHashMap.put(3, "Element3");
		myLinkedHashMap.put(4, "Element4");

		// Printing the elements it contains
		System.out.println(myLinkedHashMap);

		// Iterating each elements of myLinkedHashMap 
		//Get the set view of the keys contained in this map
		Set&lt;Integer&gt; keys = myLinkedHashMap.keySet();
		for(Integer key :keys){
			myLinkedHashMap.get(key);
		}

		// containsKey method check whether the map contains the specified key or not
		// containsValue method check whether the map contains the specified value or not
		System.out.println(myLinkedHashMap.containsKey(1)); // true
		System.out.println(myLinkedHashMap.containsValue("Element1"));// true

		// Print the size of the map
		System.out.println("size: " + myLinkedHashMap.size());
		
		// Removes an mapping for the specified key from the map if present
		myLinkedHashMap.remove(1);

		System.out.println("After removing Element1 : " + myLinkedHashMap);

		// Removes all of the elements from this map
		myLinkedHashMap.clear();
		System.out.println("After calling clear() : " + myLinkedHashMap);

		// isEmpty() Returns true if the map contains no elements.
		System.out.println("is empty :" + myLinkedHashMap.isEmpty());
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>{1=Element1, 2=Element2, 3=Element3, 4=Element4}
true
true
size: 4
After removing Element1 : {2=Element2, 3=Element3, 4=Element4}
After calling clear() : {}
is empty :true
</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
					<jsp:include page="suggestionProgramList2.jsp" />
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
