<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> Add Examples | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function validateForm() {
	category = document.getElementById("category").value;
	question = document.getElementById("question").value;
	link = document.getElementById("link").value;
	display_name = document.getElementById("display_name").value;
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
	if(link==""){
		alert("Please Enter Your Link.");
		document.form.answer.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="manage-questions">
			<form action="saveExamplesLink" name="form" method="post">
			<% 
			String msg = (String)request.getAttribute("message");
			if(msg==null)
				msg=""; 
			%>
			
			<div style="text-align: center;"><%=msg%></div>
			CATEGORY: 
				<select name="category" id="category">
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
					<option value="Basic">Basic</option>
				</select>
				<br /><br />
				QUESTION: <br />
				<textarea rows="" cols="10" id="question" name="question"></textarea>
				<br />
				<br /> LINK:<br />
				<textarea rows="" cols="" id="link" name="link"></textarea>
				<br /><br />
				<input type="submit" value="SUBMIT" onclick="return validateForm();" style="background-color: #9b9b9b; color: #fff;">
				
				</form>	
				<br /><br />
	<a href="questionAnswers">All Question And Answers</a><br />
	<a href="coreJava">All Core Java Examples</a>	<br />
	<a href="manageQuestions.jsp">Add Questions Answers</a><br />
	<a href="manageJ2EEQuestions.jsp">Add J2EE Questions Answers</a><br />		
</div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
