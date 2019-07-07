<!DOCTYPE html>
<html>
<head>
<title>DeadLock Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="DeadLock in java" />
<meta name="keywords"
	content="DeadLock, thread, multithreading, DeadLock thread in java">
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
						<h1>Deadlock Thread Example in Java</h1></div>
						<div id="code-answer">
						<p>Deadlock describes a situation where two or more threads are blocked forever, waiting for each other.
Deadlocks can occur in Java because the synchronized keyword causes the executing thread to block while 
waiting for the lock, or monitor, associated with the specified object.Since the thread might already 
hold locks associated with other objects, two threads could each be waiting for the other to release a 
lock; in such a case, they will end up waiting forever.</p>
						</div>
<pre class="prettyprint" id="div-code">
public class DeadLockExample {

	public static Object objectOne = new Object();
	public static Object objectTwo = new Object();

	public static void main(String args[]) {

		ThreadOne thread1 = new ThreadOne();
		ThreadTwo thread2 = new ThreadTwo();
		thread1.start();
		thread2.start();
	}

	private static class ThreadOne extends Thread {
		public void run() {
			synchronized (objectOne) {
				System.out.println("ThreadOne holding lock on objectOne!");
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
				}
				System.out.println("ThreadOne waiting for objectTwo....");
				synchronized (objectTwo) {
					System.out.println("!! ThreadOne acquired lock on ObjectTwo !!");
				}
			}
		}
	}

	private static class ThreadTwo extends Thread {
		public void run() {
			synchronized (objectTwo) {
				System.out.println("ThreadTwo holding lock on objectTwo!");
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
				}
				System.out.println("ThreadTwo waiting for objectOne....");
				synchronized (objectOne) {
					System.out.println("!! ThreadTwo acquired lock on objectOne !!");
				}
			}
		}
	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>ThreadTwo holding lock on objectTwo!
ThreadOne holding lock on objectOne!
ThreadTwo waiting for objectOne....
ThreadOne waiting for objectTwo....
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
