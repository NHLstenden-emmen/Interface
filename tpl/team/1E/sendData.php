<?php

if(isset($_POST['action'])){
    $bot = "INF1E";
    $action = $_POST['action'];

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

    if ($action == "test") {
        $command = "2";      
        var_dump($socket->sendToBot($bot, $command));
        sleep(1);
        $command = "a";      
        var_dump($socket->sendToBot($bot, $command));

        die();
    }

    var_dump($socket->sendToBot($bot, $command));
    // $fp = fopen('ESP Log.txt', 'a');
    // fwrite($fp, microtime() . ": " . $action . "\n");
    // fclose($fp);
}

?>