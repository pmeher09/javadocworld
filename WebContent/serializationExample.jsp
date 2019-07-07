<!DOCTYPE html>
<html>
<head>
<title>Serialization Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Serialization Java Example" />
<meta name="keywords" content="Serialization">
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
							<h1>Serialization and Deserialization Example in Java</h1>
							<div id="code-answer">
								<p>Serialization is a process of converting an object into a
									sequence of bytes which can be persisted to a disk or database
									or can be sent through streams. The reverse process of creating
									object from sequence of bytes is called deserialization.</p>
								<p>Serializability of a class is enabled by the class
									implementing the java.io.Serializable interface. The
									Serializable interface in java is a tagging interface type with
									no methods. Classes ObjectInputStream and ObjectOutputStream
									are high-level streams that contain the methods for serializing
									and deserializing an object.</p>
							</div>
						</div>

						<pre class="prettyprint" id="div-code">import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class SerializationExample {
	
	public static void main(String[] args) {
		
		//Create an employee object
		Employee emp = new Employee("1001", "User Name");
		File file = new File("C://emp.ser");
		
		try {
			//Serialization
			FileOutputStream fos = new FileOutputStream(file);
			ObjectOutputStream os = new ObjectOutputStream(fos);
			os.writeObject(emp);
			// Close resources
			fos.close();
			os.close();

			//Deserialization
			FileInputStream fis = new FileInputStream(file);
			ObjectInputStream is = new ObjectInputStream(fis);
			Employee obj = (Employee) is.readObject();
			
			
			// Close resources
			fis.close();
			is.close();
	
			System.out.println(obj);

		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e2) {
			e2.printStackTrace();
		} catch (ClassNotFoundException e3) {
			e3.printStackTrace();
		}
	}
}

class Employee implements Serializable {
	private String empId;
	private String empName;

	public Employee(String empId, String empName) {
		this.empId = empId;
		this.empName = empName;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	@Override
	public String toString() {
		return "Employe [empId=" + empId + ", empName=" + empName + "]";
	}

}
</pre>
<div id="div-code-output"><b>Output</b>
<hr>Employe [empId=1001, empName=User Name]
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
