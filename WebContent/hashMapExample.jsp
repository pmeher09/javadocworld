<!DOCTYPE html>
<html>
<head>
<title>HashMap - Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="HashMap Java Example" />
<meta name="keywords"
	content="HashMap in java ">
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
						<div id="code-question"><h1>HashMap Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.HashMap;
import java.util.Set;

public class HashMapExample {
	public static void main(String[] args) {
		// Creating a HashMap key is Integer type and value is String type
		HashMap&lt;Integer, String&gt; myHashMap = new HashMap&lt;Integer, String&gt;();
		
		//adding key-value pair to HashMap
		myHashMap.put(1, "Element1");
		myHashMap.put(2, "Element2");
		myHashMap.put(3, "Element3");
		myHashMap.put(4, "Element4");

		// Printing the elements it contains
		System.out.println(myHashMap);

		// Iterating each elements of myHashMap 
		//Get the set view of the keys contained in this map
		Set&lt;Integer&gt; keys = myHashMap.keySet();
		for(Integer key :keys){
			myHashMap.get(key);
		}

		// containsKey method check whether the map contains the specified key or not
		// containsValue method check whether the map contains the specified value or not
		System.out.println(myHashMap.containsKey(1)); // true
		System.out.println(myHashMap.containsValue("Element1"));// true

		// Print the size of the map
		System.out.println("size: " + myHashMap.size());

		// Removes an mapping for the specified key from the map if present
		myHashMap.remove(1);

		System.out.println("After removing Element1 : " + myHashMap);

		// Removes all of the elements from this map
		myHashMap.clear();
		System.out.println("After calling clear() : " + myHashMap);

		// isEmpty() Returns true if the map contains no elements.
		System.out.println("is empty :" + myHashMap.isEmpty());
	}
}
</pre>
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
