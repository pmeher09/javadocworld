<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Add Questions | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function validateForm() {
		type = document.getElementById("type").value;
		question = document.getElementById("question").value;
		answer = document.getElementById("answer").value;

		if (type == "") {
			alert("Please Select a Category.");
			document.form.type.focus();
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
		if (type.length < 2) {
			alert("Please Select a Valid Type.");
			document.form.type.focus();
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
				<form action="previewJ2EEQuesions" name="form" method="post">
					<% 
			String msg = (String)request.getAttribute("message");
			if(msg==null)
				msg=""; 
			%>

					<div style="text-align: center;"><%=msg%></div>
					<br /> TYPE: <select name="type" id="type">
						<option value="">--select--</option>
						<option value="JSP">JSP</option>
						<option value="SERVLET">Servlet</option>
						<option value="HIBERNATE">Hibernate</option>
						<option value="SPRING">Spring</option>
					</select> <br />
					<br /> QUESTION: <br />
					<textarea rows="" cols="10" id="question" name="question"><c:out
							value="${j2ee_question_answer.question}" escapeXml="false" /></textarea>
					<br /> <br /> ANSWER:<br />
					<textarea rows="5" cols="" id="answer" name="answer"><c:out
							value="${j2ee_question_answer.answer}" escapeXml="false" /></textarea>
					<br /> <br /> <input type="submit" value="PREVIEW"
						onclick="return validateForm();"
						style="background-color: #9b9b9b; color: #fff;">

				</form>
				<br />
				<br /> <a href="questionAnswers">All Question And Answers</a><br />
				<a href="manageExamples.jsp">Add Examples</a> <br /> <a
					href="manageQuestions.jsp">Add Questions Answers</a><br />

			</div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
