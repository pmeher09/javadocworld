<!DOCTYPE html>
<html>
<head>
<title>Daemon Thread in java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Daemon Thread Java Example" />
<meta name="keywords"
	content="Daemon Thread , thread, multi threading">
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
						<h1>Daemon Thread in java</h1></div>
						<div id="code-answer">
						<p>There are two types of threads in java. One is User Thread and another one is Daemon Thread. User threads are high priority threads which always run in foreground. Where as Daemon threads are low priority threads which always run in background. User threads are designed to do some specific task where as daemon threads are used to perform some supporting tasks
						</p>
						<p>Daemon threads are mostly created by the JVM to perform some background tasks like garbage collection.</p>
						<p>Thread.setDaemon(true) makes a Thread daemon but it can only be called before starting Thread in Java. It will throw IllegalThreadStateException if corresponding Thread is already started and running.
                        </p>
						<p> JVM will not force the user threads to terminate. It will wait for user threads to terminate themselves. On the other hand, JVM will force the daemon threads to terminate if all the user threads have finished their task.</p>
						</div>
<pre class="prettyprint" id="div-code">
public class MyDaemonThread extends Thread{
    
    public MyDaemonThread(){
    	//true: Marks this thread as a daemon thread 
        setDaemon(true);
    }
    
    public void run(){
       System.out.println("Run Daemon Thread-  isDaemon :  "+isDaemon());
    }
    
    public static void main(String a[]){
    	MyDaemonThread daemonThread = new MyDaemonThread();
    	daemonThread.start();
    }
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Run Daemon Thread-  isDaemon :  true
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
