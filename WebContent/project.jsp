<!DOCTYPE html>
<html>
<head>
<title>Project Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Java Example" />
<meta name="keywords"
	content="">
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
						<br />
						<div id="code-question">
						<h1> Project Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
RouteBuilder builder = new RouteBuilder() {
    public void configure() {
        errorHandler(deadLetterChannel("mock:error"));
 
        from("direct:a").to("direct:b");
    }
};


public class CamelHelloWorldExample {
	public static void main(String[] args) throws Exception {
		CamelContext context = new DefaultCamelContext();
		try {
			context.addComponent("activemq", ActiveMQComponent.
			activeMQComponent("vm://localhost?broker.persistent=false"));
			context.addRoutes(new RouteBuilder() {
				@Override
				public void configure() throws Exception {
					from("activemq:queue:test.queue")
					.to("stream:out");
				}
			});
			ProducerTemplate template = context.createProducerTemplate();
			context.start();
			template.sendBody("seda:transactionalQueueScanner",
										payload);
			Thread.sleep(2000);
		} finally {
			context.stop();
		}
	}
}

public class MyProcessor implements Processor {
  public void process(Exchange exchange) throws Exception {
    String payload = exchange.getIn().getBody(String.class);
        // do something with the payload and/or exchange here
    exchange.getIn().setBody("Changed body");
  }
}


&lt;bean id="nbintfSchedulerTask"
		class="org.springframework.scheduling.timer.MethodInvokingTimerTaskFactoryBean"&gt;
		&lt;property name="targetObject" ref="nbintfTimer" /&gt;
		&lt;property name="targetMethod" value="scanTQ" /&gt;
&lt;/bean&gt;

&lt;bean id="nbintfTimerTask" class="org.springframework.scheduling.timer.ScheduledTimerTask"&gt;
		&lt;property name="timerTask" ref="nbintfSchedulerTask" /&gt;
		&lt;property name="delay" value="60000" /&gt;
		&lt;property name="period" value="60000" /&gt;
&lt;/bean&gt;
</pre>
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
