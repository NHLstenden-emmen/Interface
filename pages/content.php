<?php
	if (!empty($_SESSION['Team'])) {

		$checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['email']);
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
		case 'gamerules':
			include 'guest/gameRules.php';
			break;
		case 'login':
			include 'team/login.php';
			break;
		case 'teams':
			include 'guest/teams.php';
			break;
    case 'ranking':
      include 'guest/ranking.php';
      echo '<link href="css/pages/guest/ranking.css" type="text/css" rel="stylesheet">';
      break;
    case 'score':
      include 'guest/score.php';
      echo '<link rel="stylesheet" type="text/css" href="css/pages/guest/score.css">';
      break;
		default:
			include '404.php'; // when the page isset found
	}
?>