<!DOCTYPE html>
<html>
<head>
<title>Print even and odd numbers using threads in java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Even Odd Thread Java Example" />
<meta name="keywords"
	content="Even Odd Thread, thread, multi threading">
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
						<h1>Print even and odd numbers using threads in java</h1></div>
<pre class="prettyprint" id="div-code">
public class ThreadEvenOddNumberExample {

	public static void main(String[] args) {
		int maxNumber = 10;

		NumberPrinter printer = new NumberPrinter();
		new Thread(new EvenNumGenerator(printer, maxNumber)).start();
		new Thread(new OddNumGenerator(printer, maxNumber)).start();
	}
}

class NumberPrinter {

	// To check if even number is printed or not.
	private boolean isEvenNumPrinted = true;

	public void printOdd(int number) throws InterruptedException {
		// Get a lock on NumberPrinter
		synchronized (this) {

			// Wait until even is not printed.
			if (!isEvenNumPrinted)
				wait();

			System.out.println(number);

			isEvenNumPrinted = false;

			// Notify the other waiting thread which is waiting on
			// NumberPrinter
			// Other thread will get out of waiting state
			notify();
		}
	}

	public void printEven(int number) throws InterruptedException {
		synchronized (this) {
			if (isEvenNumPrinted)
				wait();

			System.out.println(number);
			isEvenNumPrinted = true;
			notify();
		}
	}
}

class OddNumGenerator implements Runnable {
	private NumberPrinter q;
	private int max;

	public OddNumGenerator(NumberPrinter q, int max) {
		this.q = q;
		this.max = max;
	}

	@Override
	public void run() {
		for (int i = 1; i < max; i = i + 2) {
			try {
				q.printOdd(i);
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
}

class EvenNumGenerator implements Runnable {
	private NumberPrinter printer;
	private int max;

	public EvenNumGenerator(NumberPrinter printer, int max) {
		this.printer = printer;
		this.max = max;
	}

	@Override
	public void run() {
		for (int i = 2; i <= max; i = i + 2) {
			try {
				printer.printEven(i);
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>1
2
3
4
5
6
7
8
9
10

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
