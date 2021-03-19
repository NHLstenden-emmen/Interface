<!DOCTYPE html>
<html lang="en">
    <head>
		<!-- start favicon -->

		<!-- meta tags -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="description" content="Livestream page for the battle bots">
		<meta name="keywords" content="RoboTV">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title>RoboTV<?php if (strtolower($pagePath) !== "robotv") { echo " - " . $pagePath; } ?></title>

		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<!-- Font Awesome CDN -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">

		<!-- Animaties -->
		<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
		<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

		<!-- style sheet -->
		<link rel="stylesheet" href="css/main/main.css">
		<link rel="stylesheet" href="css/main/main-mobile.css" media="screen and (max-width: 960px)">
		<link rel="stylesheet" href="css/main/navbar.css">
		<link rel="stylesheet" href="css/pages/404.css">
		<?php
		// add css to the page
		switch(strtolower($pagePath))
		{
			case 'robotv':
			case 'home':
				echo '<link rel="stylesheet" href="css/pages/guest/home.css">';
				break;
			case 'gamerules':
				echo '<link rel="stylesheet" href="css/pages/guest/gameRules.css">';
				break;
			case 'login':
				echo '<link rel="stylesheet" href="css/pages/team/login.css">';
			case 'teams':
				echo '<link rel="stylesheet" href="css/pages/guest/teams.css">';
				break;
			case 'livestream':
				echo '<link rel="stylesheet" href="css/pages/guest/livestream.css">';
				break;
		}
		// add css to the teams pages
		if (!empty($_SESSION['Team'])) {
			$checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['name'],$_SESSION['email']);
			while ($result = $checkUsersAllowance->fetch_array(MYSQLI_ASSOC)){
				$_SESSION['Team'] = $result['Team'];

				if($result['Team'] == '1A') {
					switch(strtolower($pagePath))
					{
						case 'dashboard':
							echo '<link rel="stylesheet" href="css/team/1A/dashboard.css">';
							break;
					}
				} elseif ($result['Team'] == '1B') {
					switch(strtolower($pagePath))
					{
						case 'dashboard':
							echo '<link rel="stylesheet" href="css/team/1B/dashboard.css">';
							break;
					}
				} elseif ($result['Team'] == '1C') {
					switch(strtolower($pagePath))
					{
						case 'dashboard':
							echo '<link rel="stylesheet" href="css/team/1C/dashboard.css">';
							break;
					}
				} elseif ($result['Team'] == '1D') {
					switch(strtolower($pagePath))
					{
						case 'dashboard':
							echo '<link rel="stylesheet" href="css/team/1D/dashboard.css">';
							break;
					}
				} elseif ($result['Team'] == '1E') {
					switch(strtolower($pagePath))
					{
						case 'dashboard':
							echo '<link rel="stylesheet" href="css/team/1E/dashboard.css">';
							break;
					}
				}
			}
		}

		?> 
    </head>
	<body>