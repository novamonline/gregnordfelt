<!DOCTYPE html>
<html>
	<head>
		<title>Greg Nordfelt</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta content="True" name="HandheldFriendly" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
		<meta name="viewport" content="width=device-width" />
		<!--imports the main css file-->
		<link rel="stylesheet" href="/$ThemeDir/css/style.css" />
		<!--imports Nivo Slider css file-->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nivoslider/3.2/nivo-slider.min.css" />
		<!--imports the media queries css file-->
		<link rel="stylesheet" href="/$ThemeDir/css/media-queries.css" />
		<!--imports prettyPhoto css file-->
		<link rel="stylesheet" href="/$ThemeDir/css/prettyPhoto.css" />
		<link rel="stylesheet" href="/$ThemeDir/css/main.css" />
		<!--[if IE 7]>
		<link href="css/ie7.css" rel="stylesheet" />
		<![endif]-->
		<!--[if IE 8]>
		<link href="css/ie8.css" rel="stylesheet" />
		<script src="/$ThemeDir/js/respond.js"></script>
		<![endif]-->
	</head>
	<body class="pattern-9">
		<div id="container" class="cf">
			<div id="left-side" class="sidebar pattern-17">
				<div id="left-inner" class="cf">
					<div id="logo">
						<h1>
							<a class="local" href="#home">
								<img src="$SiteConfig.cms_logo" alt="Greg Nordfelt" />
							</a>
						</h1>
					</div>
					<% include Navigation %>
          <% include SocialMedia %>
					<div id="copyright">Copyright &copy; 2016 Greg Nordfelt. All rights reserved</div>
					<!-- end copyright -->
				</div>
				<!-- end left-inner -->
			</div>
			<!-- end left-side -->
			<div id="right-side" class="content pattern-20">
				$Layout
			<!-- end right-side -->
		</div>
		<!-- end container -->
		<!--imports Google Maps API key-->
		<!--remove this comment tag and place your Google Maps API key to avoid the popup window

  <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key= ENTER YOUR GOOGLE MAPS API V2 KEY HERE &amp;sensor=true"></script>

  remove this comment tag and place your Google Maps API key to avoid the popup window-->
		<!--imports jquery-->
		<script src="/$ThemeDir/js/jquery-1.9.1.min.js"></script>
		<script src="/$ThemeDir/js/jquery-migrate-1.1.0.min.js"></script>
		<!--imports jquery form plugin-->
		<script src="/$ThemeDir/js/jquery.form.js"></script>
		<!-- imports the sticky plugin -->
		<script src="/$ThemeDir/js/jquery.sticky.js"></script>
		<!--imports jQuery Tools plugin-->
		<script src="/$ThemeDir/js/jquery.tools.min.js"></script>
		<!--imports scrollTo plugin-->
		<script src="/$ThemeDir/js/jquery.scrollTo-1.4.3.1-min.js"></script>
		<!--imports jquery nav plugin-->
		<script src="/$ThemeDir/js/jquery.nav.js"></script>
		<!--imports prettyPhoto plugin-->
		<script src="/$ThemeDir/js/jquery.prettyPhoto.js"></script>
		<!--imports twitter feed plugin-->
		<script src="/$ThemeDir/js/jquery.tweet.js"></script>
		<!--imports jQuery Easing plugin-->
		<script src="/$ThemeDir/js/easing.1.2.js"></script>
		<!--imports jQuery Nivo Slider plugin-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nivoslider/3.2/jquery.nivo.slider.min.js"></script>
		<script>

  $(document).ready(function() {
  	$('#nivo-slider').nivoSlider({
          effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
          animSpeed: 700, // Slide transition speed
          pauseTime: 5000, // How long each slide will show
          startSlide: 0, // Set starting Slide (0 index)
          directionNav: true, // Only show on hover
          controlNav: false, // 1,2,3... navigation
          captionOpacity: 0.8 // Universal caption opacity
      });
  });

  </script>
		<!--imports custom javascript code-->
		<script src="/$ThemeDir/js/custom.js"></script>
	</body>
</html>
