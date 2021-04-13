<?php
define('Start', microtime(true));
define('styleFolder', 'tpl/');
define('Handlers', styleFolder.'handlers/');

include '../../../config/classes/socket.php';
include '../../../config/Configuration.php';

if($socket = new ServerConnection(Config::$serverPort, Config::$serverIP)){
	echo "Yus > Nieuwe socket werkt i guess <br>";
}

if(isset($_POST['action'])){

    $bot = "Dimitri";
    $action = $_POST['action'];

    if($action == "STOP"){
        $command = "a";
    }

	// vooruit
    if($action == "W"){
        $command = "b";
    }
	// links
    if($action == "A"){
        $command = "e";
    }
	// achteruit
    if($action == "S"){
        $command = "c";
    }
	// rechts
    if($action == "D"){
        $command = "d";
    }

    // Commands
    if($action == "RACE"){
        $command = "1";
    }
    if($action == "TEKENING"){
        $command = "2";
    }
    if($action == "DOOLHOF"){
        $command = "3";
    }
    if($action == "SPS"){
        $command = "4";
    }

    // Ready
    if($action == "Ready"){
        print_r($socket->sendStartToBot($bot));
        die();
    }

    // Send Data
    print_r($socket->sendToBot($bot, $command));
} else {
	$bot = "Dimitri";
	var_dump($socket->sendStartToBot($bot));
}
?>