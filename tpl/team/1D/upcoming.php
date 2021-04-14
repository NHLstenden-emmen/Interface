<?php 
    if(!isset($DB)) {
        define('Start', microtime(true));
        require_once '../../../config/classes/mysql.php';
        require_once '../../../config/classes/template.php';
        require_once '../../../config/Configuration.php';
        
        $DB             = new Database;
        $TPL            = new Template;
        $TPL->Output();
    }
    
    $spellen = array("Steen, papier, schaar" => "sps/p", "Doolhof" => "maze/z/f", "Race" => "race/c", "Tekenen" => "draw/w/teken");
    
    // Ophalen voltooide spellen
    $voltooideSpellen = $DB->Select("SELECT game, COUNT(*) AS gamesPlayed FROM punten GROUP BY game HAVING gamesPlayed = 5");
       
    foreach($spellen as $key => $spel) {
        $vergelijkingsWaarden = explode("/", $spel);
        foreach($voltooideSpellen as $voltooideSpel) {
            foreach($vergelijkingsWaarden as $vergelijkingsWaarde) {
                if(strpos(strtolower($voltooideSpel['game']), strtolower($vergelijkingsWaarde)) !== false) {
                    unset($spellen[$key]);
                    break;
                }
            }
        }
    }
    
    $spellen = array_keys($spellen);
    
    echo "<h3 id='next'>Nu bezig</h3>";
    echo "<p id='time'>".(!empty($spellen[0]) ? ucfirst($spellen[0]) : "Alle spellen zijn gespeeld")."</p>";
?>