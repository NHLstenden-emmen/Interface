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


//$upcoming = $DB->Select("SELECT spel_naam FROM speelschema WHERE robot_1 = 'BOT4' OR robot_2 = 'BOT4'");
$resultaten = $DB->Select("Select COUNT(*) AS aantalTeams, game FROM punten GROUP BY game");

$gespeeldeSpellen = array();
foreach($resultaten as $resultaat)
{
    if($resultaat["aantalTeams"] == 5)
    {
        $gespeeldeSpellen[] = $resultaat["game"];
    }
}

echo "<h3 id='next'>Nu bezig</h3>";
echo "<p id='time'>";
if(!in_array("doolhof", $gespeeldeSpellen))
{
    echo "Doolhof";
}
else if(!in_array("race", $gespeeldeSpellen))
{
    echo "Race";
}
else if(!in_array("steen, papier, schaar", $gespeeldeSpellen))
{
    echo "Steen, papier, schaar";
}
else if(!in_array("tekenen", $gespeeldeSpellen))
{
    echo "Tekening";
}
echo "</p>";

?>