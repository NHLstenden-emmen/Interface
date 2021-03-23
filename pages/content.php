<?php
	if (!empty($_SESSION['Team'])) {
		// $checkUsersAllowance = $db->checkUsersAllowance($_SESSION['user_id'],$_SESSION['username']);
		$userId = $_SESSION['user_id'];
		$userName = $_SESSION['username'];
        // het mysql block
			// include the env file pagina
			$host = $env['DB_HOST'];
			$user = $env['DB_USERNAME'];
			$pass = $env['DB_PASSWORD'];
			$table = $env['DB_TABLE'];
			$conn = @mysqli_connect($host,$user,$pass, $table);
			if(!$conn)
			{
				DIE("could not connect". mysqli_connect_error($conn));
			}

			$userId = htmlspecialchars($userId);
			$userName = htmlspecialchars($userName);

			if($stmt = $conn->prepare("SELECT `team` FROM `users` WHERE `user_id` = ? AND `username` = ? ")){
				$stmt->bind_param("ss", $userId, $userName);
				$stmt->execute();
				$checkUsersAllowance = $stmt->get_result();
				$stmt->free_result();
				$stmt->close();
			}
        // het mysql block
		
		while ($result = $checkUsersAllowance->fetch_array(MYSQLI_ASSOC)){
			$_SESSION['Team'] = $result['team'];

			switch(strtolower($pagePath))
			{ //everything is in lowercase so the cases must also be in lowercase
				case 'adduser':
					include 'team/addUser.php';
					return;
			}

			if($result['team'] == '1A') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1a/dashboard.php';
						return;
				}
			} elseif ($result['team'] == '1B') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1B/dashboard.php';
						return;
				}
			} elseif ($result['team'] == '1C') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1C/dashboard.php';
						return;
				}
			} elseif ($result['team'] == '1D') {
				switch(strtolower($pagePath))
				{ //everything is in lowercase so the cases must also be in lowercase
					case 'dashboard':
						include 'team/1D/dashboard.php';
						return;
				}
			} elseif ($result['team'] == '1E') {
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
			// moet hier nog weg\/
		case 'adduser':
			include 'team/addUser.php';
			return;
			// moet hier nog weg/\
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