<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> Add Questions | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function validateForm() {
	emailId = document.getElementById("emailId").value;
	category = document.getElementById("category").value;
	question = document.getElementById("question").value;
	answer = document.getElementById("answer").value;
	if(emailId=="")
	{
		alert("Please Enter Your Email.");
		document.form.emailId.focus();
		return false;
	}
	if(category=="")
	{
		alert("Please Select a Category.");
		document.form.category.focus();
		return false;
	}
	if(question=="")
	{
		alert("Please Enter Your Question.");
		document.form.question.focus();
		return false;
	}
	if(question.length>1000){
		alert("Question should be 1000 chars maximum.");
		document.form.message.focus();
		return false;
	}
	if(answer==""){
		alert("Please Enter Your Answer.");
		document.form.answer.focus();
		return false;
	}
	
	if(emailId.length==0){
		return true;	
	}
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if(re.test(emailId)){
    	return true;	
    }else{
    	alert("Please enter a valid email-id");
    	document.form.emailId.focus();
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
			<a href="questionAnswers">Vie All  Java Question And Answers</a><br />
	<a href="manageExamples.jsp">Add Examples</a>		<br />
	<a href="manageJ2EEQuestions.jsp">Add J2EE Examples</a>		<br />
	<a href="trickyQuestionsForm.jsp">Add Tricky Questions</a>		<br />
	<a href="stackTraceForm.jsp">Stack Trace</a>		<br />
		<a href="articlesForm.jsp">Articles</a>		<br />
			<form action="previewQuesions" name="form" method="post">
			<% 
			String msg = (String)request.getAttribute("message");
			if(msg==null)
				msg=""; 
			%>
			
			<div style="text-align: center;"><%=msg%></div>
			<br/>
				EMAIL ID:&nbsp;&nbsp;
				<input type="text" id="emailId" value="${question_answer.emailId}" name="emailId"><br /><br />
			CATEGORY: 
				<select name="category" id="category">
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
				</select>
				<br /><br />
				QUESTION: <br />
				<textarea rows="" cols="10" id="question" name="question"><c:out value="${question_answer.question}" escapeXml="false" /></textarea>
				<br />
				<br /> ANSWER:<br />
				<textarea rows="10" cols="" id="answer" name="answer"><c:out value="${question_answer.answer}" escapeXml="false" /></textarea>
				<br /> <br /> 
				<input type="submit" value="PREVIEW" onclick="return validateForm();" style="background-color: #9b9b9b; color: #fff;">
				
				</form>	
				<br /><br />
	
</div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
