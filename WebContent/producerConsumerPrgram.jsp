<!DOCTYPE html>
<html>
<head>
<title>Producer Consumer Example in Thread</title>
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
						<h1>
						Producer Consumer Example in Thread</h1></div>
<pre class="prettyprint" id="div-code">
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

//Create a Producer Thread Class
class Producer implements Runnable {

	private final BlockingQueue sharedQueue;

	public Producer(BlockingQueue sharedQueue) {
		this.sharedQueue = sharedQueue;
	}

	@Override
	public void run() {
		for (int i = 1; i < 15; i++) {
			try {
				System.out.println("Produced by Producer: " + i);
				sharedQueue.put(i);
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}

}

//Crate a Consumer Thread Class
class Consumer implements Runnable {

	private final BlockingQueue sharedQueue;

	public Consumer(BlockingQueue sharedQueue) {
		this.sharedQueue = sharedQueue;
	}

	@Override
	public void run() {
		while (true) {
			try {
				System.out.println("Consumed by Consumer: " + sharedQueue.take());
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}

}

public class ProducerConsumerExample {
	public static void main(String args[]) {
		// Shared object
		BlockingQueue sharedQueue = new LinkedBlockingQueue();

		// Producer and Consumer thread
		Thread producerThread = new Thread(new Producer(sharedQueue));
		Thread consumerThread = new Thread(new Consumer(sharedQueue));
		
		// Starting producer thread
		producerThread.start();

		// Starting consumer thread
		consumerThread.start();
	}

}
</pre>
<div id="div-code-output"><b>Output</b><hr>Produced by Producer: 1
Produced by Producer: 2
Produced by Producer: 3
Produced by Producer: 4
Produced by Producer: 5
Consumed by Consumer: 1
Produced by Producer: 6
Consumed by Consumer: 2
Produced by Producer: 7
Produced by Producer: 8
Produced by Producer: 9
Produced by Producer: 10
Consumed by Consumer: 3
Produced by Producer: 11
Produced by Producer: 12
Consumed by Consumer: 4
Produced by Producer: 13
Produced by Producer: 14
Consumed by Consumer: 5
Consumed by Consumer: 6
Consumed by Consumer: 7
Consumed by Consumer: 8
Consumed by Consumer: 9
Consumed by Consumer: 10
Consumed by Consumer: 11
Consumed by Consumer: 12
Consumed by Consumer: 13
Consumed by Consumer: 14
</div>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
					</div>
					<jsp:include page="contentBottom.jsp" />
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
