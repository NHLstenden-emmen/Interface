<?php
    // Het desbetreffende team bepalen
    function determineTeam($robotNaam)
    {
        switch($robotNaam)
        {
            case "BOT1":
                return "A";
            case "BOT2":
                return "B";
            case "BOT3":
                return "C";
            case "BOT4":
                return "D";
            case "BOT5":
                return "E";
            default:
                return "-";
        }
    }
    
    // Tijd van een wedstrijd bepalen
    function TimeGame($game)
    {
        if(strpos(strtolower($game), "steen") === false)
        {
            return "5 minuten";
        }
        else
        {
            return "45 seconden";
        }
    }

    // Zorgen voor database object wanneer er wordt gerefreshed
    if(!isset($DB))
    {
        define('Start', microtime(true));

        require_once '../../../config/classes/mysql.php';
        require_once '../../../config/classes/template.php';

        require_once '../../../config/Configuration.php';

        $DB             = new Database;
        $TPL            = new Template;

        $TPL->Output();
    }
    
    // Array met scores van de teams
    $arrayOfScores = array("A" => 0, "B" => 0, "C" => 0, "D" => 0, "E" => 0);

    $initialA = 0;
    $initialB = 0;
    $initialC = 0;
    $initialD = 0;
    $initialE = 0;

    // Uitvoeren van query voor het ophalen van de punten per team
    $points = $DB->Select("SELECT robot, SUM(score) AS score FROM punten GROUP BY robot");
    foreach($points as $point){
        // Opslaan van punten bij het bijbehorende team
        $team = determineTeam($point["robot"]);
        $score = $point["score"];
        $arrayOfScores[$team] = $score;
        
        // Opslaan van de punten voor het berekenen van de kansen
        $pointsVariable = "initial".$team;
        $$pointsVariable = $score;
    }
    
    // Ophalen van aankomende spellen
    $wedstrijden = $DB->Select("SELECT spel_naam, robot_1, robot_2 FROM speelschema WHERE robot_1 = 'Wall-D' OR robot_2 = 'Wall-D'");

    // Ophalen van uitslagen
    $uitslagen = $DB->Select("SELECT * FROM resultaat");
    
    // Ophalen gespeelde spellen
    $gespeeldeSpel = $DB->Select("SELECT game, COUNT(*) AS gamesPlayed FROM punten GROUP BY game HAVING gamesPlayed = 5");
       
    foreach ($wedstrijden as $key => $wedstrijd) {
        
        foreach ($gespeeldeSpel as $spel) {
        if(strtolower($wedstrijd['spel_naam']) == strtolower($spel['game']))
            {
                unset($wedstrijden[$key]);
            }
        }
    }
?>

        <div class="data currentRanking neonBlock" data-aos="fade-right" data-aos-duration="1000">
            <h3>Huidige stand</h3>
            <table>
                <?php 
                    // Weergeven scores
                    foreach($arrayOfScores as $team => $score)
                    {
                        echo "<tr id='team".$team."'>";
                        echo "<td>Team".$team."</td>";
                        echo "<td>".$score."</td>";
                        echo "</tr>";
                    }
                ?>
            </table>
        </div>
        <div class="data upcoming neonBlock" data-aos="fade-right" data-aos-duration="1250">
            <h3>Nog te spelen</h3>
            <div class="aankomend">
                <table>
                    <thead>
                        <tr>
                            <th>Spel</th>
                            <th>Wedstrijdlengte</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            // Het weergeven van de wedstrijden die nog gespeeld moeten worden
                            if(count($wedstrijden) > 0)
                            {   
                                foreach($wedstrijden as $wedstrijd)
                                {
                                    echo "<tr>";
                                    echo "<td>".ucfirst($wedstrijd["spel_naam"])."</td>";
                                    echo "<td>".TimeGame($wedstrijd['spel_naam'])."</td>";
                                    echo "</tr>";
                                }
                            }
                            else
                            {
                                echo "<tr>";
                                echo "<td colspan='2'>Er zijn geen wedstrijden gevonden</td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="chance" class="data chances neonBlock" data-aos-anchor-placement="center-bottom" data-aos="fade-right" data-aos-duration="1100">
            <h3>Je kansen</h3>
            <?php include("chances.php"); ?>
        </div>
        <div class="data pastResults neonBlock" data-aos="fade-right" data-aos-duration="1600">
            <h3>Resultaten</h3>
            <div class="table">
                <table>
                    <thead>
                        <tr>
                            <th>Spel</th>
                            <th>Score</th>
                            <th>Team</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            if(count($uitslagen) > 0)
                            {
                                foreach($uitslagen as $uitslag)
                                {
                                    echo "<tr>";
                                    echo "<td>".ucfirst($uitslag['game'])."</td>";
                                    echo "<td>".$uitslag['score']."</td>";
                                    echo "<td>".determineTeam($uitslag['robot'])."</td>";
                                    echo "</tr>";
                                }
                            }
                            else
                            {
                                echo "<tr>";
                                echo "<td colspan='3'>Er zijn momenteel geen uitslagen</td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>