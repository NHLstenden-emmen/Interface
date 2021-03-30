
<!DOCTYPE html>
<html lang="nl">
    <head>
        <title>Robo TV - Livestream</title>

        <meta charset="UTF-8">
		<meta name="description" content="Livestream page for the battle bots">
		<meta name="keywords" content="RoboTV">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="shortcut icon" href="/tpl/assets/images/favicon/favicon.ico" type="image/x-icon" />

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- Bootstrap -->
		<link rel="stylesheet" href="/tpl/assets/css/main/bootstrap.min.css">
		
		<!-- Font Awesome CDN -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">

		<!-- Animaties -->
		<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
		<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	
        <!-- stylesheets -->
		<link rel="stylesheet" href="/tpl/assets/css/main/main.css">
		<!-- <link rel="stylesheet" href="/tpl/assets/css/main/main-mobile.css" media="screen and (max-width: 960px)"> -->
		<link rel="stylesheet" href="/tpl/assets/css/main/navbar.css">
		<link rel="stylesheet" href="/tpl/assets/css/main/footer.css">
		<link rel="stylesheet" href="/tpl/assets/css/page/404.css">

        <link rel="stylesheet" href="/tpl/assets/css/page/livestream.css">
                        <link rel="stylesheet" href="https://unpkg.com/plyr@3/dist/plyr.css">

    </head>
    <body>
  <div id="navbar" class="container-fluid" data-aos="fade-bottom">
    <div class="container nav">
      <img id="logo" class="zoom" title="RoboTV" src="/tpl/assets/images/logo.png">
      <ul id="menu">
        <li><a href="/start">Home</a></li>
        
        <li><a href="/teams">Teams</a></li>
        <li><a href="/livestream">Livestream</a></li>
        <li id="games-dropdown">
            <div class="dropdown">
              <span class="dropdownLink">Games <i class="fas fa-caret-down"></i></span>
              <div class="dropdown-content">
                <a href="/stats"><i class="fas fa-caret-right"></i> Statistics</a>
                <a href="/scheme"><i class="fas fa-caret-right"></i> Scheme</a>
                <a href="/rules"><i class="fas fa-caret-right"></i> Rules</a>
              </div>
            </div>
        </li>
        <li>
          <a href="?lang=change"><i class="language fas fa-language"></i></a>
        </li>
        <li>
          <a class="alternative-button" href="/login">Login&nbsp<i class="fas fa-sign-in-alt"></i></a>
        </li>
      </ul>
      <div class="mobileBurger">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
  </div>
<div id="background">
    <div class="lines">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
        <div class="line4"></div>
        <div class="line5"></div>
        <div class="line6"></div>
    </div>
</div>
<div class="container">
    <div id="livestream">
        <h1 class="title">Livestream</h1>
        <br>
        <div class="contentLivestream row">
            <div class="col-md-8">
                <video id="livestreamVideo">
                    Je browser ondersteunt geen HTML5 video's.
                </video>
            </div>
            <div class="col-md-4 chatStyle">
                <div id="liveChat"></div>
                <!-- 
                    <i class="far fa-trash-alt"></i>    
                -->
            </div>
        </div>
		<div class="row">
			<div class="col-md-4 noPadding">
				
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-4 noPadding">
				<div id="sendMessage">
					<div onclick="sendMessage()" class="input-icons">
						<i class="send fas fa-chevron-right"></i>
					</div>
					<input onkeydown="typeMessage(this)" type="text" id="liveChatInput" class="input-field" placeholder="Bericht" /> 
				</div>
			</div>
		</div>
    </div>
</div>
    <footer>
        
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>


    <script src="/tpl/assets/js/app.js"></script>

    <script src="/tpl/assets/js/page/livestream.js"></script>
                        <script src="/tpl/assets/js/live/chat.js"></script>
                        <script src="https://unpkg.com/plyr@3.6.4/dist/plyr.min.js"></script>
                        <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=es6,Array.prototype.includes,CustomEvent,Object.entries,Object.values,URL"></script>                         
                        <script src="https://cdn.rawgit.com/video-dev/hls.js/18bb552/dist/hls.min.js"></script>
                        <script src= ""></script>
                        <script>launchLiveChat(0)</script>

    <script> AOS.init(); </script>
</body>
</html>
<!-- Site geladen in 0.029709815979004 seconden. -->