<!DOCTYPE html>
<html lang="en">
    <head>
		<!-- start favicon -->

		<!-- meta tags -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="description" content="Livestream page for the battle bots">
		<meta name="keywords" content="RoboTV">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title>RoboTV <?php if (strtolower($pagePath) !== "RoboTV") { echo " - " . $pagePath; } ?></title>

		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<!-- Font Awesome CDN -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">

		<!-- style sheet -->
		<link rel="stylesheet" href="css/main/main.css">
		<link rel="stylesheet" href="css/main/navbar.css">
		<?php
			if (empty($_SESSION['Team'])) {
				switch(strtolower($pagePath))
					{
						case 'home':
							echo '<link rel="stylesheet" href="css/guest/home.css">';
							break;
						default:
							echo '<link rel="stylesheet" href="css/pages/404.css">';
					}
			} else {
				$checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['name'],$_SESSION['email']);
				while ($result = $checkUsersAllowance->fetch_array(MYSQLI_ASSOC)){
					$_SESSION['Team'] = $result['Team'];
		
					if($result['Team'] == '1A') {
						switch(strtolower($pagePath))
						{
							case 'dashboard':
								echo '<link rel="stylesheet" href="css/team/1A/dashboard.css">';
								break;
							default:
							echo '<link rel="stylesheet" href="css/pages/404.css">';
						}
					} elseif ($result['Team'] == '1B') {
						switch(strtolower($pagePath))
						{
							case 'dashboard':
								echo '<link rel="stylesheet" href="css/team/1B/dashboard.css">';
								break;
							default:
								echo '<link rel="stylesheet" href="css/pages/404.css">';
						}
					} elseif ($result['Team'] == '1C') {
						switch(strtolower($pagePath))
						{
							case 'dashboard':
								echo '<link rel="stylesheet" href="css/team/1C/dashboard.css">';
								break;
							default:
								echo '<link rel="stylesheet" href="css/pages/404.css">';
						}
					} elseif ($result['Team'] == '1D') {
						switch(strtolower($pagePath))
						{
							case 'dashboard':
								echo '<link rel="stylesheet" href="css/team/1D/dashboard.css">';
								break;
							default:
								echo '<link rel="stylesheet" href="css/pages/404.css">';
						}
					} elseif ($result['Team'] == '1E') {
						switch(strtolower($pagePath))
						{
							case 'dashboard':
								echo '<link rel="stylesheet" href="css/team/1E/dashboard.css">';
								break;
							default:
								echo '<link rel="stylesheet" href="css/pages/404.css">';
						}
					} else{
						echo '<link rel="stylesheet" href="css/pages/404.css">';
					}
				}
			}
		?> 
    </head>
	<body>