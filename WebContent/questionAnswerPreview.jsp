<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.javadw.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Java Interview Questions and Answers</title>
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
					<div id="interview_qn_ans">
						<br />
						<div style="margin-left: 80px; margin-bottom: 30px;">
							<h2>Top Tricky Java interview questions and Answers</h2>
						</div>
					<form action="saveQuestions" method="post">
						<div style="border: solid 1px #00ff40; padding: 2px; ">
						<div id="div-question-answer" >
							<div id="div-question">Q.1) <c:out value="${question_answer.question}" escapeXml="false" /> </div>
							<div id="div-answer"><c:out value="${question_answer.answer}" escapeXml="false" /> </div>
						</div>
					</div>
					<div style="margin-left: 10px; margin-top: 5px;" ><input type="submit" value="SUBMIT IT !" name="save" class="home_button"><input type="submit" name="edit" value=" EDIT IT " class="home_button"></div>
					<br />
					</form>
						<div id="div-question-answer">
							<div id="div-question">Question : What will happen if you put return statement or
								System.exit() on try or catch block? Will finally block execute?</div><hr>
							<p>Yes, Finally
								block will execute even if you put return statement in try block
								or catch block, but the finally block won't run if you call
								System.exit form try or catch.</p>
						</div>
						
						<div id="div-question-answer">
						<div id="div-question">Question: What does the the expression 1.0/0.0 will
								return? Will it throw Exception or Error?</div><hr>
							<p>It will not throw 
								ArithmeticExcpetion and return Double.INFINITY.</p>
						</div>
						<div id="div-question-answer">
							<div id="div-question">Question:Explain difference between JDK, JRE and JVM ?</div>
							<hr>
<pre>
<b>JDK (Java Development Kit)</b>
It contains everything that will be required to develop and run any Java Application. 
It contains JRE with Java compiler, debugger and core classes.It is the core component
of Java Environment and provides all the tools, executables and binaries required to 
compile, debug and execute a Java Program.

<b>JRE (Java Run time Environment)</b>
It provides platform to execute java programs. JRE consists of JVM and java binaries and 
other classes to execute any program. JRE doesn't contain any development tools like 
java compiler, debugger etc. You should have JRE installed to execute any java program, 
but we don't need JDK for running any java program.

<b>JVM (Java Virtual Machine)</b>
JVM only works with byte code, is responsible to converting byte code to the machine 
specific code. Hence you need to compile your java application(.java) so that it can be 
converted to byte code format (which is .class file). 
Which then will be used by JVM to run application. JVM only provide environment it needs 
other library to run application properly.
JVM is called virtual because it provides a interface that does not depend on the underlying 
operating system and machine hardware. 
This independence from hardware and operating system is what makes java program write once 
run anywhere.
</pre>
						</div>
						<div id="div-question-answer">
							<div id="div-question">Question: How java make it different from the C++?</div>
							<hr>
<pre>
These are the features of java which make it different from the C++: 

Simple
Multi-Threaded
Distributed Application
Robust
Security
No Pointers
No Operator overloading
No Multiple inheritance
Platform Independent
</pre>
						</div>
						<jsp:include page="contentBottom.jsp" />
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
