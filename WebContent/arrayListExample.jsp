<!DOCTYPE html>
<html>
<head>
<title>ArrayList Java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="ArrayList Java Example" />
<meta name="keywords"
	content="ArrayList in java, List, collection ">
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
						<div id="code-question"><h1>ArrayList Example in Java</h1></div>
						<div id="code-answer">
						<ul>
						<li>ArrayList extends AbstractList and implements the List interface.</li>
						<li>ArrayList maintain the elements insertion order.</li>
						<li>ArrayList is non-synchronized.</li>
						<li>Default initial capacity of ArrayList is 10.</li>
						<li>ArrayList allows duplicate elements.</li>
						</ul>
						<br />
						<p>In this example we will demonstrate mostly used methods of ArrayList.</p>
						</div>
<pre class="prettyprint" id="div-code">
import java.util.ArrayList;
import java.util.List;

public class ArrayListExample {
	 
    public static void main(String[] a){
         
        List&lt;String&gt; arrayList = new ArrayList&lt;String&gt;();
        
        //add elements to the list
        arrayList.add("TINA");
        arrayList.add("RAM");
        arrayList.add("JOHN");
        
        //print list elements
        System.out.println(arrayList);
        
        
        //Get the size of the list
        System.out.println("Size is: "+arrayList.size());
        
        //get elements by index
        System.out.println("Element at index 2: "+arrayList.get(2));
        
        //add elements at a specific index
        arrayList.add(2,"PLAY");
        System.out.println(arrayList);
        
        //check if list contains the specified element
        System.out.println("Contains element ALEX :"+arrayList.contains("ALEX"));
        
        //check if list it empty or not
        System.out.println("Is empty list: "+arrayList.isEmpty());
        
        //Remove element from a specific position
        arrayList.remove(1);
        
        System.out.println("After removing index 1 element : "+arrayList);
        
        //Empty the list
        arrayList.clear();
        
        System.out.println("After clearing the list: "+arrayList);

    }
}
</pre>
<div id="div-code-output"><b>Output</b><hr>[TINA, RAM, JOHN]
Size is: 3
Element at index 2: JOHN
[TINA, RAM, PLAY, JOHN]
Contains element ALEX :false
Is empty list: false
After removing index 1 element : [TINA, PLAY, JOHN]
After clearing the list: []
						</div>
						<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />

					</div>
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
