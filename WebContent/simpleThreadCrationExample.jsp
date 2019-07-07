<!DOCTYPE html>
<html>
<head>
<title>Thread Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Thread in Java by extending Thread Class" />
<meta name="keywords"
	content=" thread in java, thread ">
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
						<div id="code-question"><h1>Create a Thread in Java (by extending Thread Class)</h1></div>
<pre class="prettyprint" id="div-code">
class MyThread extends Thread {

	public static int count = 0;
	public MyThread() {
	}

	public MyThread(String name) {
		super(name);
	}

	public void run() {
		while (count <= 10) {
		  try {
			System.out.println(Thread.currentThread().getName() +" count: " + count);
			count++;
			Thread.sleep(100);
		   } catch (InterruptedException iex) {
			  iex.printStackTrace();
		   }
		}
	}
}

public class ThreadExample {

	public static void main(String a[]) {

		System.out.println("Simple Thread Example by extending Thread class..");
		
		MyThread myThread = new MyThread("ThreadOne");
		myThread.start();

	}
}

</pre>
<div id="div-code-output"><b>Output</b><hr>
Simple Thread Example by extending Thread class..
ThreadOne count: 0
ThreadOne count: 1
ThreadOne count: 2
ThreadOne count: 3
ThreadOne count: 4
ThreadOne count: 5
ThreadOne count: 6
ThreadOne count: 7
ThreadOne count: 8
ThreadOne count: 9
ThreadOne count: 10	</div>
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
