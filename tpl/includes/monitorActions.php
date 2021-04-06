<?php
	define('Start', microtime(true));
	define('styleFolder', 'tpl/');
	define('Handlers', styleFolder.'handlers/');
	include '../../config/classes/mysql.php';
	include '../../config/Configuration.php';
	
	$DBNew = new Database;

	if( isset($_POST['user']) && 
		isset($_POST['keyInt']) && 
		isset($_POST['keyChar']) &&
		isset($_POST['type']) &&
		isset($_POST['url']) && 
		isset($_POST['ip'])){

		// User actions
		$user = $_POST['user'];
		$keyInt = $_POST['keyInt'];
		$keyChar = $_POST['keyChar'];
		$url = $_POST['url'];  
		$type = $_POST['type'];
		$device = $_POST['device'];
		$screen = $_POST['screen'];
		$ip = $_POST['ip'];
		
		if(isset($_POST['clickValue'])){
			$clickValue = trim($_POST['clickValue']);
		} else {
			$clickValue = NULL;
		}
		
		$DBNew->Insert("INSERT INTO actions (user, type_ac, keyInt, keyChar, clickValue, url, device, screen, ip)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", ["$user", "$type", "$keyInt", "$keyChar", "$clickValue", "$url", "$device", "$screen", "$ip"]);
		
		echo "Success";
	}
?>