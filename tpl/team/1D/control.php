<?php
    // Botnaam en pad log gegevens
    $bot = "Wall-D";
    $path = "tpl/team/1D/response.txt";
    $currentLog = file_get_contents($path);
    
    if(isset($_POST["start"])) {
        $file = fopen($path, "r+");
        $currentTime = date("H:i:s");
        
        // Sturen startsignaal naar bot
        $text = print_r($socket->sendStartToBot($bot), true);
        $text = ucfirst(str_replace("_", " ", $text));
        
        $log = "<p>".$currentTime."\t".$text."</p>\r\n";
        $log .= $currentLog;
        
        // Schrijf de reactie naar het log
        if($file !== false) {
            fwrite($file, $log);
        }
        fclose($file);
    }
    
    // Geef de meest recente content weer
    echo file_get_contents($path);
?>