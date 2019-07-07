<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.javadw.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Java Tricky Questions and Answers</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
<!-- MailMunch for http://www.javadocworld.com -->
<script type="text/javascript">
	function call_func() {
		document.getElementById("answer_div").style.display = "block";
	}
</script>
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
						<jsp:include page="top_add.html" />
					</div>
					<div id="interview_qn_ans">
						<div style="margin-left: 15px;">
							<h1>Java Tricky Questions and Answers</h1>
							<hr class="style-light">
						</div>


						<div id="div-question-answer">
							<div id="div-question">
								Q)
								<c:out value="${qa.question}" escapeXml="false" />
								<br />
								<pre class="prettyprint" id="div-code"><c:out value="${qa.questionCode}" escapeXml="false" />
								</pre><br />
								<div 
									style="font: 14px verdana, helvetica, arial, sans-serif; color: #333;">
									<div><span style="color: #069; ">A) </span><c:out value="${qa.optionA}" escapeXml="false" /></div><br /><div><span style="color: #069;"> B)</span>
									<c:out value="${qa.optionB}" escapeXml="false" /></div><br /><div><span style="color: #069;"> C) </span><c:out
										value="${qa.optionC}" escapeXml="false" /></div><br /> <div><span style="color: #069;">D)</span> <c:out
										value="${qa.optionD}" escapeXml="false" /></div><br />
								</div>
							</div>
							<br />&nbsp;Answer: &nbsp;<a href="javascript:call_func();">Click here</a>
							<div id="answer_div"
								style="border: 1px solid #ddd; background: #fdfdfd; padding: 10px; display: none;">
								<c:out value="${qa.answer}" escapeXml="false" />
							</div>
						</div>
						<br />
						<table
							style="width: 100%; border-bottom: 1px dotted #e1e1e1; border-top: 1px dotted #e1e1e1; background: #fff;">
							<tr style="">

								<td style="text-align: left; width: 20px;"><img
									src="images/icon/arrow-left-icon.png" alt="Java document World"
									height="18px;"></td>
								<td style="text-align: left; padding: 5px;"><a
									style="text-decoration: none; font-size: 20px; "
									href='trickyQuestionAnswers?id=${qa.id}&nav=P'><span
										id="nav-font3"> PREVIOUS </span></a></td>

								<td style="text-align: right; padding: 5px;"><a
									style="text-decoration: none;"
									href='trickyQuestionAnswers?id=${qa.id}&nav=N'><span
										id="nav-font3"> NEXT </span></a></td>
								<td style="text-align: right; width: 20px;"><img
									src="images/icon/arrow-right-icon.png"
									alt="Java document World" height="18px;"></td>
							</tr>
						</table>
						<br />
						<jsp:include page="contentBottom.jsp" />

						<br /> <br />
						<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */

								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/trickyQuestionAnswers"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "trickyQuestionAnswers"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d
											.createElement('script');

									s.src = '//javadocworld.disqus.com/embed.js';

									s.setAttribute('data-timestamp',
											+new Date());
									(d.head || d.body).appendChild(s);
								})();
							</script>

						</div>
					</div>
				</div>
			</div>

			<div id="sub-content-right-main">
				<jsp:include page="contentRightMain.jsp" />
			</div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
