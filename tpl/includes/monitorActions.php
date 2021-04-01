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
    isset($_POST['url'])){
    // User actions

    $user = $_POST['user'];
    $keyInt = $_POST['keyInt'];
    $keyChar = $_POST['keyChar'];
    $url = $_POST['url'];  
    $type = $_POST['type'];
    $device = $_POST['device'];
    $screen = $_POST['screen'];
    
    if(isset($_POST['clickValue'])){
        $clickValue = trim($_POST['clickValue']);
    } else {
        $clickValue = NULL;
    }

    $sql = "INSERT INTO actions (user, type_ac, keyInt, keyChar, clickValue, url, device, screen)
    VALUES ('$user', '$type', '$keyInt', '$keyChar', '$clickValue', '$url',  '$device', '$screen')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }


} elseif(isset($_POST['logFile'])) {
    // Logfile to database
    $logPath = "../../config/php.log";
    unlink($logPath);
    $logText = $_POST['logFile'];

    $logComponents = explode("\n", $logText);

    foreach($logComponents as $errorLine){
        $errorComponents = explode("]", $errorLine);        

        $time = str_replace("[", "", $errorComponents[0]);
        $type = str_replace("[", "", $errorComponents[1]);
        $pid = str_replace("[", "", $errorComponents[2]);
        $client = str_replace("[", "", $errorComponents[3]);
        $error = str_replace("[", "", $errorComponents[4]);

        if ($error != ""){

            $sql = "INSERT INTO php (Error, Time, pid, client, type)
            VALUES ('$error', '$time', '$pid', '$client', '$type')";

            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }

        }
    }

    
    fopen($logPath, "w");

} else {
    // Invalid input    

}


$conn->close();

?>