<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.javadw.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring IOC Interview Questions and Answers</title>
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
				<div id="sub-content-left-main">
					<div style="text-align: center;">
						<script async
							src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- Horiz-link -->
						<ins class="adsbygoogle"
							style="display: inline-block; width: 468px; height: 15px"
							data-ad-client="ca-pub-6274485334555977"
							data-ad-slot="4423118849"></ins>
						<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
					</div>
					<div id="interview_qn_ans">
						<div style="margin-left: 15px;">
							<h1>Spring IOC Questions and Answers</h1>
						</div>
						<hr>
						<c:forEach items="${questionAnswers}" var="qa">
							<div id="div-question-answer">
								<div id="div-question">
									Q)
									<c:out value="${qa.question}" escapeXml="false" />
								</div>
								<div id="div-answer">
									<c:out value="${qa.answer}" escapeXml="false" />
								</div>
							</div>
						</c:forEach>
						<br /> <br />
						<jsp:include page="top_add.html" />
					</div>
				</div>
				<div id="sub-content-right-main">
					<jsp:include page="contentRightMain.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
