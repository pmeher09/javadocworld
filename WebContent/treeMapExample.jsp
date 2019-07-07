<!DOCTYPE html>
<html>
<head>
<title>TreeMap Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="TreeMap Java Example" />
<meta name="keywords"
	content="TreeMapExample in java, treemap, map, collection">
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
						<div id="code-question"><h1>TreeMap Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.Set;
import java.util.TreeMap;

public class TreeMapExample {
	public static void main(String[] args) {
		// Creating an HashMap key is Integer type and value is String type
		TreeMap&lt;Integer, String&gt; treeMap = new TreeMap&lt;Integer, String&gt;();
		
		//adding key-value pair to TreeMap
		treeMap.put(5, "Element5");
		treeMap.put(1, "Element1");
		treeMap.put(2, "Element2");
		treeMap.put(3, "Element3");
		treeMap.put(4, "Element4");

		// Printing the elements it contains
		System.out.println("treeMap : "+treeMap);

		// Iterating each elements of treeMap 
		//Get the set view of the keys contained in this map
		Set&lt;Integer&gt; keys = treeMap.keySet();
		for(Integer key :keys){
			treeMap.get(key);
		}

		// containsKey method check whether the map contains the specified key or not
		// containsValue method check whether the map contains the specified value or not
		System.out.println(treeMap.containsKey(1)); // true
		System.out.println(treeMap.containsValue("Element1"));// true

		// Print the size of the map
		System.out.println("size: " + treeMap.size());
		
		// Removes an mapping for the specified key from the map if present
		treeMap.remove(1);

		System.out.println("After removing Element1 : " + treeMap);

		// Removes all of the elements from this map
		treeMap.clear();
		System.out.println("After calling clear() : " + treeMap);

		// isEmpty() Returns true if the map contains no elements.
		System.out.println("is empty :" + treeMap.isEmpty());
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>treeMap : {1=Element1, 2=Element2, 3=Element3, 4=Element4, 5=Element5}
true
true
size: 5
After removing Element1 : {2=Element2, 3=Element3, 4=Element4, 5=Element5}
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
