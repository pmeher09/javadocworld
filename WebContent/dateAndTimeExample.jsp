<!DOCTYPE html>
<html>
<head>
<title>Example- Java get current date</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="java get current date and time" />
<meta name="keywords"
	content="java get current date,java get current time ">
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
						<div id="code-question"><h1>Get current Date and Time in java</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.Calendar;
import java.util.Date;

public class DateTimeExample {
	public static void main(String[] args) {

		// Using java.util.Date
		System.out.println("Today Date using Date class..");
		Date date = new Date();
		System.out.println("Date : "+date);

		// Using java.util.Calendar
		System.out.println("\nToday Date and Time using Calendar class..");
		Calendar calendar = Calendar.getInstance();
		
		System.out.println("Date :  " + calendar.getTime());
		System.out.println("Day  : " + calendar.get(Calendar.DAY_OF_MONTH));
		System.out.println("Month: " + calendar.get(Calendar.MONTH));
		System.out.println("Time : " + calendar.get(Calendar.HOUR_OF_DAY) + ":"
				+ calendar.get(Calendar.MINUTE) + ":"
				+ calendar.get(Calendar.SECOND));

	}

}
</pre>
<div id="div-code-output"><b>Output</b><hr>Today Date using Date class..
Date : Mon Oct 05 16:05:36 IST 2015

Today Date and Time using Calendar class..
Date :  Mon Oct 05 16:05:36 IST 2015
Day  : 5
Month: 9
Time : 16:5:36
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
