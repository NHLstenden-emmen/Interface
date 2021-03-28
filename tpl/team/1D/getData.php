<?php
    function error()
    {
        echo "Er is iets fout gegaan met het ophalen van de data. Probeer het opnieuw.";
    }

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
        }
    }
    
    function isGameFinished($gameNaam)
    {
        global $conn;
        $sql = "SELECT * FROM punten WHERE game = ? GROUP BY robot";
        if($stmt = mysqli_prepare($conn, $sql)) 
        {
            mysqli_stmt_bind_param($stmt, "s", $gameNaam);
            if(mysqli_stmt_execute($stmt)) 
            {
                mysqli_stmt_store_result($stmt); 
                // Kijken of alle teams punten hebben voor dit spel
                if(mysqli_stmt_num_rows($stmt) == 5) 
                {
                    mysqli_stmt_close($stmt);
                    return true;
                }
                mysqli_stmt_close($stmt);
            }
        }
        return false;
    }
    
    function isStarted()
    {
        global $conn;
        $sql = "SELECT * FROM resultaat";
        if($stmt = mysqli_prepare($conn, $sql)) 
        {
            if(mysqli_stmt_execute($stmt)) 
            {
                mysqli_stmt_store_result($stmt); 
                // Kijken of er resultaten zijn
                if(mysqli_stmt_num_rows($stmt) != 0) 
                {
                    mysqli_stmt_close($stmt);
                    return true;
                }
                mysqli_stmt_close($stmt);
            }
        }
        return false;
    }
    
    function determineCurrentGame()
    {
        if(isStarted())
        {
            if(!isGameFinished("doolhof"))
            {
                return "doolhof";
            }
            elseif(!isGameFinished("race"))
            {
                return "race";
            }    
            elseif(!isGameFinished("steen, papier, schaar"))
            {
                return "sps";
            }
            elseif(!isGameFinished("tekenen"))
            {
                return "tekenen";
            }
            else
            {
                return "none";
            }
        }
        else
        {
            return "none";
        }
    }
    
    // Tijd van een wedstrijd bepalen
    function TimeGame($game)
    {
        if(strpos(strtolower($game), "steen") === false)
        {
            return "05:00";
        }
        else
        {
            return "00:45";
        }
    }
    
    // Ophalen van data
    if($conn = mysqli_connect("localhost", "root", "", "battlebots"))
    {        
        
        // Ophalen van opkomende spellen
        $wedstrijden = array();
        $sql = "SELECT spel_naam, robot_1, robot_2 FROM speelschema WHERE robot_1 = 'BOT4' OR robot_2 = 'BOT4'";
        if($stmt = mysqli_prepare($conn, $sql)) 
        {
            if(mysqli_stmt_execute($stmt)) 
            {
                mysqli_stmt_bind_result($stmt, $spel, $team1, $team2);
                mysqli_stmt_store_result($stmt); 
                // Kijken of er resultaat is
                if(mysqli_stmt_num_rows($stmt) != 0) 
                {
                    // data opslaan
                    while(mysqli_stmt_fetch($stmt)) 
                    {
                        if($team1 == "BOT4" || $team2 == "BOT4")
                        {
                            $wedstrijd = array('spel' => $spel, 'tegenstander' => ($team1 != "BOT4" ? $team1 : $team2));
                            $wedstrijden[] = $wedstrijd;
                        }
                    }
                }
                mysqli_stmt_close($stmt);
            }
        }        
        
        // Ophalen van uitslagen
        $uitslagen = array();
        $sql = "SELECT * FROM resultaat";
        if($stmt = mysqli_prepare($conn, $sql)) 
        {
            if(mysqli_stmt_execute($stmt)) 
            {
                mysqli_stmt_bind_result($stmt, $spel, $team, $score);
                mysqli_stmt_store_result($stmt); 
                // Kijken of er resultaat is
                if(mysqli_stmt_num_rows($stmt) != 0) 
                {
                    // data opslaan
                    while(mysqli_stmt_fetch($stmt)) 
                    {
                            $uitslag = array('spel' => $spel, 'team' => $team, 'score' => $score);
                            $uitslagen[] = $uitslag;
                    }
                }
                mysqli_stmt_close($stmt);
            }
        }
        mysqli_close($conn);
    }
?>


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
    
    // Array met scores van de teams
    $arrayOfScores = array("A" => 0, "B" => 0, "C" => 0, "D" => 0, "E" => 0);

    $initialA = 0;
    $initialB = 0;
    $initialC = 0;
    $initialD = 0;
    $initialE = 0;

    // Uitvoeren van query voor het ophalen van de punten per team
    $points = $DB->Select("SELECT * FROM punten");
    foreach($points as $point){
        // Opslaan van punten bij het bijbehorende team
        $team = determineTeam($point["robot"]);
        $score = $point["score"];
        $arrayOfScores[$team] = $score;
        
        // Opslaan van de punten voor het berekenen van de kansen
        $pointsVariable = "initial".$team;
        $$pointsVariable = $score;
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
            <h3>Aankomend</h3>
            <div class="aankomend">
                <table>
                    <thead>
                        <tr>
                            <th>Spel</th>
                            <th>Duur</th>
                            <th>Tegen</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            if(count($wedstrijden) > 0)
                            {    foreach($wedstrijden as $wedstrijd)
                                {
                                    echo "<tr>";
                                    echo "<td>".$wedstrijd['spel']."</td>";
                                    echo "<td>". TimeGame($wedstrijd['spel'])."</td>";
                                    echo "<td>".$wedstrijd['tegenstander']."</td>";
                                    echo "</tr>";
                                }
                            }
                            else
                            {
                                echo "<tr>";
                                echo "<td colspan='3'>Er zijn geen wedstrijden gevonden</td>";
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
                                    echo "<td>".$uitslag['spel']."</td>";
                                    echo "<td>".$uitslag['score']."</td>";
                                    echo "<td>".determineTeam($uitslag['team'])."</td>";
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