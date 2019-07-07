<!DOCTYPE html>
<html>
<head>
<title>CSV File Reader And Writer  java Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" CSV File Reader and Writer Example" />
<meta name="keywords"
	content="CSV File Reader, CSV File Writer, reader csv, writer csv, import csv, export csv ">
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
						<div id="code-question"><h1>CSV File Reader Example in Java </h1></div>
						<div id="code-answer">
						</div>
<pre class="prettyprint" id="div-code">
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ReadCsvFileExample {

	public static void main(String[] args) {
		String csvFile = "c:\\myCsvFileExample.csv";
		BufferedReader br = null;
		String splitter = ",";
		String line = "";

		try {
			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] employee = line.split(splitter);

				//Print the row data
				System.out.println("Employee [name=" + employee[0] + "  ,gender="
				 + employee[1] + "  , age="	+ employee[2] + "]");

			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		System.out.println("Completed successfully...");
	}
}
</pre>
<div id="code-question"><h1>CSV File Writer Example in Java </h1></div>
<div id="code-answer">
</div>
<pre class="prettyprint" id="div-code">
public class WriteCsvFileExample {
	public static void main(String[] args) {
		try {
			//Create a writer instance
			FileWriter writer = new FileWriter("c:\\myCsvFileExample.csv");

			writer.append("Name");
			writer.append(',');
			writer.append("Gender");
			writer.append(',');
			writer.append("Age");
			//add a new line
			writer.append('\n');

			writer.append("Employee1");
			writer.append(',');
			writer.append("Male");
			writer.append(',');
			writer.append("28");
			writer.append('\n');

			writer.append("Employee2");
			writer.append(',');
			writer.append("Female");
			writer.append(',');
			writer.append("39");
			writer.append('\n');

			writer.flush();
			writer.close();
			
			System.out.println("Csv File created Successfully.. ");
		} catch (IOException e) {
			System.out.println("Error while creating csv file ");
			e.printStackTrace();
			
		}
	}
}
</pre>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
</div>
					
					<jsp:include page="contentBottom.jsp" />
					
					<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */
	
								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/Example"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "Example"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d.createElement('script');
	
									s.src = '//javadocworld.disqus.com/embed.js';
	
									s.setAttribute('data-timestamp', +new Date());
									(d.head || d.body).appendChild(s);
								})();
							</script>
						
						</div>
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
