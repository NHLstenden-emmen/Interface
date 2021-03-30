<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include '../../../config/classes/socket.php';
$socket = new ServerConnection(49153, "194.171.181.139");

if(isset($_GET['action'])){

    $bot = "ROBot Jetten";
    $action = $_GET['action'];

    if($action == "Stop"){
        $command = "a";
    }

    // Straight angles

    if($action == "W"){
        $command = "b";
    }
    if($action == "A"){
        $command = "d";
    }
    if($action == "S"){
        $command = "c";
    }
    if($action == "D"){
        $command = "e";
    }

    // Custom angles

    if($action == "WA"){
        $command = "w";
    }
    if($action == "WD"){
        $command = "q";
    }
    if($action == "SD"){
        $command = "m";
    }
    if($action == "SA"){
        $command = "n";
    }

    // Commands
    if($action == "SPS"){
        $command = "4";
    }


    // Send Data
    print_r($socket->sendToBot($bot, $command));
}

?>