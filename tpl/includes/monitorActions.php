<?php

    $servername = "localhost";
    $username = "root";
    $password = "Welkom10!";
    $dbname = "battlebots";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

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

		$sql = "INSERT INTO actions (user, type_ac, keyInt, keyChar, clickValue, url, device, screen, ip)
		VALUES ('$user', '$type', '$keyInt', '$keyChar', '$clickValue', '$url',  '$device', '$screen', '$ip')";

		if ($conn->query($sql) === TRUE) {
			echo "New record created successfully";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}

	}

	$conn->close();

?>