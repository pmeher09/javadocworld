<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Add Stack Trace | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<script type="text/javascript">
	function validateForm() {
		category = document.getElementById("category").value;
		question = document.getElementById("question").value;
		answer = document.getElementById("answer").value;
		
		if (category == "") {
			alert("Please Select a Category.");
			document.form.category.focus();
			return false;
		}
		if (question == "") {
			alert("Please Enter Your Question.");
			document.form.question.focus();
			return false;
		}
		if (question.length > 1000) {
			alert("Question should be 1000 chars maximum.");
			document.form.message.focus();
			return false;
		}
		if (answer == "") {
			alert("Please Enter Your Answer.");
			document.form.answer.focus();
			return false;
		}

	}
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="manage-questions">
				<form action="previewStackTrace" name="form" method="post">
					<% 
			String msg = (String)request.getAttribute("message");
			if(msg==null)
				msg=""; 
			%>

					<div style="text-align: center;"><%=msg%></div>
					<br /> CATEGORY: <select name="category" id="category">
						<option value="">---Select---</option>
						<option value="CoreJava">Core Java</option>
						<option value="String">Strings</option>
						<option value="OOPs">OOPs</option>
						<option value="Collections">Collections</option>
						<option value="Threads">Threads</option>
						<option value="Exceptions">Exceptions</option>
						<option value="IOs">IOs</option>
						<option value="Generics">Generics</option>
						<option value="Sorting">Sorting</option>
						<option value="Searching">Searching</option>
						<option value="JDBC">JDBC</option>
						<option value="Unix">Unix</option>
						<option value="Linux">Linux</option>
						<option value="Spring">Spring</option>
						<option value="Hibernate">Hibernate</option>
						<option value="MySQL">MySQL</option>
						<option value="Java">Java</option>
						<option value="Tomcat">Tomcat</option>
						<option value="Maven">Maven</option>
						<option value="GIT">GIT</option>
						<option value="Jasper">Jasper</option>
						<option value="JSTL">JSTL</option>
						<option value="JSP">JSP</option>
						<option value="Other">Other</option>
					</select> <br />
					<br /> QUESTION: <br />
					<textarea rows="2" cols="10" id="question" name="question"><c:out
							value="${tricky_question_answer.question}" escapeXml="false" /></textarea>

					<br />
					<textarea rows="20" cols="10" id="questionCode" name="questionCode"><c:out
							value="${tricky_question_answer.questionCode}" escapeXml="false" /></textarea>
					<br /> <br /> ANSWER:<br />
					<textarea rows="20" cols="" id="answer" name="answer"><c:out
							value="${tricky_question_answer.answer}" escapeXml="false" /></textarea>
					<br />
					<br /> <input type="submit" value="PREVIEW"
						
						style="background-color: #9b9b9b; color: #fff;">
				</form>
				<br />
				<br /> <a href="questionAnswers">Vie All Java Question And
					Answers</a><br /> <a href="manageExamples.jsp">Add Examples</a> <br />
				<a href="manageJ2EEQuestions.jsp">Add J2EE Examples</a> <br /> <a
					href="manageTrickyQuestions.jsp">Add Tricky Questions</a> <br />
			</div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
