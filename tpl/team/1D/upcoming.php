<?php 
    if(!isset($DB))
    {
        define('Start', microtime(true));

        require_once '../../../config/classes/mysql.php';
        require_once '../../../config/classes/template.php';
        require_once '../../../config/classes/socket.php';

        require_once '../../../config/Configuration.php';

        $DB             = new Database;
        $TPL            = new Template;
        $socket         = new ServerConnection(Config::$serverPort, Config::$serverIP);

        $TPL->Output();
    }
    
    $spellen = array("sps", "doolhof", "race", "tekening");
    
    // Ophalen voltooide spellen
    $voltooideSpellen = $DB->Select("SELECT game, COUNT(*) AS gamesPlayed FROM punten GROUP BY game HAVING gamesPlayed = 5");
       
    foreach ($spellen as $key => $spel) {
        foreach ($voltooideSpellen as $voltooideSpel) {
            if(strtolower($spel) == strtolower($voltooideSpel['game'])) {
                unset($spellen[$key]);
            }
        }
    }
    
    $spellen = array_values($spellen);
    
    $vindsps = array_search("sps", $spellen);
    if($vindsps !== false) {
        $spellen[array_search("sps", $spellen)] = "Steen, papier, schaar";
    }
    
    echo "<h3 id='next'>Nu bezig</h3>";
    echo "<p id='time'>".(!empty($spellen[0]) ? ucfirst($spellen[0]) : "Alle spellen zijn gespeeld")."</p>";
?>