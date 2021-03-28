<?php
    $bot = "BOT1";

    $path = "tpl/team/1D/response.txt";
    $currentLog = file_get_contents($path);
    
    if(isset($_POST["start"]))
    {
        $file = fopen($path, "r+");
        
        $currentTime = date("H:i:s");
        
        $text = print_r($socket->sendStartToBot($bot), true);
        $text = ucfirst(str_replace("_", " ", $text));
        
        $log = "<p>".$currentTime."\t".$text."</p>\r\n";
        $log .= $currentLog;
        
        if($file !== false)
        {
            fwrite($file, $log);
        }
        
        fclose($file);
    }
    elseif(isset($_POST["stop"]))
    {
        // Stop
    }
    
    echo file_get_contents($path);
?>