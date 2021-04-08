<?php
/*
require '../../../config/classes/socket.php';
$socket = new ServerConnection(49153, "194.171.181.139");
*/


define('Start', microtime(true));
define('styleFolder', 'tpl/');
define('Handlers', styleFolder.'handlers/');

include '../../../config/classes/socket.php';
include '../../../config/Configuration.php';

if($socket = new ServerConnection(Config::$serverPort, Config::$serverIP)){
	echo "Yus > Nieuwe socket werkt i guess <br>";
}

if(isset($_POST['action'])){

    $bot = "ROBot Jetten";
    $action = $_POST['action'];

    if($action == "Stop"){
        $command = "a";
    }

    // Straight angles

	// voor
    if($action == "W"){
        $command = "b";
    }
	// links
    if($action == "A"){
        $command = "e";
    }
	// achter
    if($action == "S"){
        $command = "c";
    }
	// rechts
    if($action == "D"){
        $command = "d";
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

    if($action == "DOOLHOF"){
        $command = "3";
    }

    if($action == "RACE"){
        $command = "1";
    }

    if($action == "TEKENING"){
        $command = "2";
    }

    // Ready
    if($action == "Ready"){
        print_r($socket->sendStartToBot($bot));
        die();
    }

    // Send Data
    print_r($socket->sendToBot($bot, $command));
} else {


    // Ready
	
	//PROBLEEM (PAGINA BLIJFT LADEN) BIJ VERSTUREN VAR_DUMP regel 94, dus zonder post etc.
	//http://robotv.serverict.nl/tpl/team/1E/sendData.php 
	
	
	// TESTCASE - SEND START TO BOT (connectie werkt en al maar blijft laden)
	$bot = "ROBot Jetten";
	var_dump($socket->sendStartToBot($bot));
	
    //$command = "a";
    //var_dump($socket->sendToBot($bot, $command));
}
?>