<?php 
switch(@trim($_GET['type']))
{
	case 'leaderboard':
	    $response = json_encode($DB->Select("SELECT * FROM livedata WHERE type = ? LIMIT 1", ["leaderboard"])[0]);
		header("livedata: {$response}");
	break;
}

?>