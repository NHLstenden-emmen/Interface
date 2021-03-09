<?php
	if (empty($_SESSION['Team'])) { 
		switch(strtolower($pagePath)) 
			{ //everything is in lowercase so the cases must also be in lowercase
				case 'interface':
				case 'home':
					include 'guest/home.php';
					break;
				default:
					include '404.php'; // when the page isset found
			}
	} else {
		$checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['name'],$_SESSION['email']);
		while ($result = $checkUsersAllowance->fetch_array(MYSQLI_ASSOC)){
			$_SESSION['Team'] = $result['Team'];

			if($result['Team'] == '1A') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1a/dashboard.php';
						break;
					default:
						include '404.php'; // when the page isset found
				}
			} elseif ($result['Team'] == '1B') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1B/dashboard.php';
						break;
					default:
						include '404.php'; // when the page isset found
				}
			} elseif ($result['Team'] == '1C') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1C/dashboard.php';
						break;
					default:
						include '404.php'; // when the page isset found
				}
			} elseif ($result['Team'] == '1D') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1D/dashboard.php';
						break;
					default:
						include '404.php'; // when the page isset found
				}
			} elseif ($result['Team'] == '1E') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1E/dashboard.php';
						break;
					default:
						include '404.php'; // when the page isset found
				}
			} else{
				include '404.php';
			}
		}
	}
?>