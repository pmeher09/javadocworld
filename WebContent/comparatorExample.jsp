<!DOCTYPE html>
<html>
<head>
<title>Comparator Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
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
						<h1>Comparator Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class Student implements Comparator&lt;Student&gt; {

	private String studentName;
	private int studentAge;

	Student() {
	}

	Student(String name, int age) {
		this.studentName = name;
		this.studentAge = age;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	<span id="div-code-comment">// Overriding the compare method to sort with age</span>
	public int compare(Student stdtn1, Student stdtn2) {
		return stdtn1.studentAge - stdtn2.studentAge;
	}
}

public class ComparatorExample {

	public static void main(String args[]) {

		<span id="div-code-comment">// Create student objects with name and age</span>
		Student student1 = new Student("John", 38);
		Student student2 = new Student("Ram", 21);
		Student student3 = new Student("Shyam", 18);
		Student student4 = new Student("Arun", 28);

		<span id="div-code-comment">// Creating a list takes list of Student objects</span>
		List&lt;Student&gt; list = new ArrayList&lt;Student&gt;();
		list.add(student1);
		list.add(student2);
		list.add(student3);
		list.add(student4);
		
		System.out.println("Before Sorting: ");
		<span id="div-code-comment">// Before Sorting printing list.</span>
		for (Student s : list) {
			System.out.print(s.getStudentName() + ":" + s.getStudentAge()
					+ ", ");
		}

		<span id="div-code-comment">// Here it Sorts the arrayList using comparator</span>
		Collections.sort(list, new Student());

		System.out.println("\nAfter Sorting : ");
		<span id="div-code-comment">// After Sorting printing list</span>
		for (Student s : list) {
			System.out.print(s.getStudentName() + ":" + s.getStudentAge()
					+ ", ");
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>
Before Sorting: 
John:38, Ram:21, Shyam:18, Arun:28, 
After Sorting : 
Shyam:18, Ram:21, Arun:28, John:38, 
</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
						</div>
						<jsp:include page="contentBottom.jsp" />
<jsp:include page="suggestionProgramList3.jsp" />
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
