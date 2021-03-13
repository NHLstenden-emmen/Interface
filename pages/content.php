<?php
	if (!empty($_SESSION['Team'])) {

		$checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['name'],$_SESSION['email']);
		while ($result = $checkUsersAllowance->fetch_array(MYSQLI_ASSOC)){
			$_SESSION['Team'] = $result['Team'];

			if($result['Team'] == '1A') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1a/dashboard.php';
						return;
				}
			} elseif ($result['Team'] == '1B') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1B/dashboard.php';
						return;
				}
			} elseif ($result['Team'] == '1C') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1C/dashboard.php';
						return;
				}
			} elseif ($result['Team'] == '1D') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1D/dashboard.php';
						return;
				}
			} elseif ($result['Team'] == '1E') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1E/dashboard.php';
						return;
				}
			} 
		}
	} 
	switch(strtolower($pagePath)) 
	{ //everything is in lowercase so the cases must also be in lowercase
		case 'robotv':
		case 'home':
			include 'guest/home.php';
			break;

		/* BEGIN CUSTOM 1E NIET MEENEMEN NAAR MAIN BRANCE*/
		case 'dashboard':
			include 'team/1E/dashboard.php';
			echo '<link rel="stylesheet" href="css/pages/team/1E/dashboard.css" />';
			echo '<link rel="stylesheet" media="screen and (min-device-width: 1440px)" href="css/pages/team/1E/desktop-style.css" />';
			echo '<link rel="stylesheet" media="screen and (min-width: 800px) and (max-width: 1439px)" href="css/pages/team/1E/tablet-style.css" />';
			echo '<link rel="stylesheet" media="screen and (min-width: 100px) and (max-width: 799px)" href="css/pages/team/1E/mobile-style.css" />';
			echo '<link rel="stylesheet" href="css/pages/team/1E/background.css" />';
			break;
		/* EINDE CUSTOM 1E */

		default:
			include '404.php'; // when the page isset found
	}
?>