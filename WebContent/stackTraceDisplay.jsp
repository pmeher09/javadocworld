<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.javadw.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title><c:out value="${st.category}"/> | JavaDoc World</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Stack Trace" />
<meta name="keywords"
	content="Stack Trace, java errrors, exception, stackoverflow, trace, error, runtime error, compile time error, how to">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/stacktrace/style.css" rel="stylesheet" type="text/css">
<script async
	src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<!-- Go to www.addthis.com/dashboard to customize your tools --> 
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-561d2c227d4b482e"></script> 
<script>
	(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
			</div>
			<div id="content-right">
				<div id="sub-content-left-main">
					<div style="text-align: center;">
					</div>
					<div id="interview_qn_ans">
					
						<div id="core-java">
								<div id="div-question-answer">
									
										<h1><c:out value="${st.question}" escapeXml="false" /></h1>
										<hr class="style-light">
										<div id="div-question-user">
										<b>Category:</b> <span style="color: #fff; background-color: #5fba7d; padding: 2px;"><c:out value="${st.category}" escapeXml="false" /></span> &nbsp;&nbsp;
										<span style="color: #333; background-color: #eff0f1; padding: 2px;"><c:out value="${st.displayDate}" escapeXml="false" /></span>
										</div>
											<br />
									<div id="div-answer">	
									<c:out value="${st.questionCode}" escapeXml="false" />
									</div>
									<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- auto-link -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-6274485334555977"
     data-ad-slot="6330265648"
     data-ad-format="link"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<br />
									<div
										style="font-family: erdana, helvetica, arial, sans-serif; font-size: 20px; color: #444; float: left; "><span style="color: #5fba7d;  padding: 2px;">&#10004; </span>&nbsp;Answer</div>
											<div style="float: right;" id="div-question-user"><i> by <span  style="color: #666;  padding: 2px;"><b><c:out value="${st.submittedBy}" escapeXml="false" /></b></span></i> &nbsp;&nbsp;</div>
											<br />
									<hr class="style-light">
								
									<!-- Go to www.addthis.com/dashboard to customize your tools --> 
									<div class="addthis_inline_share_toolbox_kie0"></div>
											<br />
									<div id="div-answer">
										<c:out value="${st.answer}" escapeXml="false" />
										</div>
										
								</div>
							
						</div>
						<br />
							<jsp:include page="top_add.html" />
						
						<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */

								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/stackTrace"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "coreJava"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
				<div id="sub-content-right-main">
					<jsp:include page="contentRightStackTrace.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
