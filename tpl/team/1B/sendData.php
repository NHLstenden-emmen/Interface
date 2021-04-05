<?php

if(isset($_POST['action'])){
    $bot = "Dimitri";
    $action = $_POST['action'];

    
    // start the robot
    if($action == "Startup"){
        $command = "a";
    }// STOP
    if($action == "STOP"){
        $command = "a";
    }

    // VOORUIT
    if($action == "W"){
        $command = "b";
    } // ACHTERUIT 
    if($action == "S"){
        $command = "c";
    } // 45° GRADEN DRAAI LINKS
    if($action == "A"){
        $command = "d";
    } // 45° GRADEN DRAAI RECHTS 
    if($action == "D"){
        $command = "e";
    }
    // start games
    if ($action == "race") {
        $command = "1";
    }
    if ($action == "tekening") {
        $command = "2";
    }
    if ($action == "doolhof") {
        $command = "3";
    }
    if ($action == "steenpapierschaar") {
        $command = "4";
    }


    var_dump($socket->sendToBot($bot, $command));
}

?>