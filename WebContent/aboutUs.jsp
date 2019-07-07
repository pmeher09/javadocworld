<!DOCTYPE html>
<html>
<head>
<title>About Us -JavaQueue</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="about_us">
				<div id="about_us_header">About Us</div>
				<br /> <br />
				<div>
					<a style="text-decoration: none;" href="home.jsp">JavaQueue.com</a>
					provides easy solution for java programs/algorithms to learn
					online. <br />We are a team of four java professionals who just
					love programming. <br /> <br /> <br /> <br /> <br /> <br /> <b><u>Thanks
							for reading our articles </u></b> <br /> <br />If you have any
					feedback, suggestions and general inquiries please <br />contact
					us at <a href="mailto:info.javadocworld@gmail.com">info.javaqueue@gmail.com</a>
				</div>
				<br /> <br /> <br /><br /><br /><br /><br /><br /><br />
				<div style="border: solid 1px #6c6cff;background:#f4f4f4; padding: 10px;">
					<div id="fb-root"></div>
					<script>
						(function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0];
							if (d.getElementById(id))
								return;
							js = d.createElement(s);
							js.id = id;
							js.async=true;
							js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5&appId=437284506479054";
							fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));
					</script>
					
					<h3 style="font-size: 35px; padding-bottom: 5px;">
						Java<span style="color: blue;">Queue</span>
					</h3>
					
					<div class="fb-like"
						data-href="https://www.facebook.com/javadocworld"
						data-layout="button_count" data-action="like"
						data-show-faces="true" data-share="true"></div>

				 <!--  <br /> <br /><br /> CONNECT WITH
				US ON: <br /> <br /> <a
					href="http://www.facebook.com/javadocworld" target="_blank"> <img
					src="images/social_icon/facebook.png"
					alt="Facebook Page of javadocworld" height="60px;" width="60px;"></a>
				<a href="https://www.google.com/+Javadocworld_JavaExamples"
					target="_blank"><img src="images/social_icon/google_plus.png"
					alt="Google+ Page of javadocworld" height="60px;" width="60px;"></a>
				<a href="https://twitter.com/JavaDocWorld" target="_blank"> <img
					src="images/social_icon/twitter_alt.png"
					alt="Twitter Page of javadocworld" height="60px;" width="60px;"></a>-->
</div>
			
			</div>
		</div>
		<jsp:include page="aboutus_footer.html" />
	</div>
</body>
</html>
