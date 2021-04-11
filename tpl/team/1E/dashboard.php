<?php

/*
 *
 *  PHP HANDLERS
 * 
 */

 /* Custom params */
 $TeamID = "1E";
 $RobotName = "ROBot Jetten";

 /* Send Data to Robot */
 if(isset($_POST['action'])){

     $action = $_POST['action'];

    if($action == "Stop"){
        $command = "a";
    }

    if($action == "CLEAR"){
        $command = "0";
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
        print_r($socket->sendStartToBot($RobotName));
        die();
    }

    // Send Data
    $sendData = $socket->sendToBot($RobotName, $command);
    if($sendData == "bot_not_online"){
        $DB->Insert("INSERT INTO actions (type_ac, user, keyChar, clickValue, url) VALUES ('SENDTOBOT', ?, ?, 'bot_not_online', 'http://robotv.serverict.nl/dashboard/1E')", [$RobotName, $command]);
    } else if ($sendData == "success"){
        $DB->Insert("INSERT INTO actions (type_ac, user, keyChar, clickValue, url) VALUES ('SENDTOBOT', ?, ?, ?, 'http://robotv.serverict.nl/dashboard/1E')", [$RobotName, command, 'Success']);
    } else {
        $DB->Insert("INSERT INTO actions (type_ac, user, keyChar, clickValue, url) VALUES ('SENDTOBOT', ?, ?, ?, 'http://robotv.serverict.nl/dashboard/1E')", [$RobotName, $command, 'Error']);
    }

    echo $sendData;

    die();
 }

 /* Form handling */ 
 if(isset($_POST['EditDesc_NL']) || isset($_POST['EditDesc_EN'])){
    if (isset($_POST['EditDesc_NL']) && trim($_POST['EditDesc_NL']) != ""){
       $DB->Update("UPDATE teams SET TeamDesc_NL = ? WHERE TeamID = ?", [$_POST['EditDesc_NL'], $TeamID]);
       unset($_POST['TeamDesc_NL']);
    } else if (isset($_POST['EditDesc_EN']) && trim($_POST['EditDesc_EN']) != ""){
       $DB->Update("UPDATE teams SET TeamDesc_EN = ? WHERE TeamID = ?", [$_POST['EditDesc_EN'], $TeamID]);
       unset($_POST['TeamDesc_EN']);
    } else {
        // Error inserting data
    }
}

 /* Data from database */
 $robotData = $DB->Select("SELECT * FROM teams WHERE TeamID = ?",[$TeamID]);
 $userData = $DB->Select("SELECT * FROM users WHERE team = ?",[$TeamID]);
 $robotAction = $DB->Select("SELECT * FROM actions WHERE user = ? ORDER BY time DESC",[$RobotName]);

 /* Data from socket */
 if($botList = $socket->getBotList()){
     $botStatus = "Offline";
     foreach (json_decode(json_encode($botList),true) as $key => $botInArray){
         if (strpos($botInArray, $RobotName) !== false) {
             $botStatus = "Online";
         }
     }

 } else {
    $botStatus = "Offline";
 }

?>

<!-- Include CSS -->
<link rel="stylesheet" type="text" href="/tpl/assets/css/team/1E/dashboard.css">

<!-- Include JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="/tpl/team/1E/dashboard.js"></script>

<!-- Card Content -->
<div class="container topPadding cardBlock disableScroll">
    <div class="row cardList" data-aos="fade-up">
        <div class="col-lg-4 topCard" onclick="openCardBoxOne();">
            <div class="cardContent" id="robot">
                <!-- Titel -->
                <h5>Robot specs</h5>

                <!-- Details -->
                <p>{NAME}: <?php echo $RobotName;?></p>
                <p>Team: <?php echo $TeamID;?></p>

                <!-- Status -->
                <div id="robotStatus">
                    <div id="<?php echo $botStatus; ?>"></div>
                    <p>&nbsp;</p>
                    <p><?php echo $botStatus; ?></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 topCard" onclick="openCardBoxTwo();">
            <div class="cardContent" id="members">
                <!-- Titel -->
                <h5>Members</h5>

                <!-- Details -->
                <?php
                    if (count($userData) < 4){
                        for($x = 0; $x < count($userData); $x++){
                            echo $userData[$x]['voornaam'] . ' ' . $userData[$x]['achternaam'] . '<br>';
                        }
                    } else {
                        for($x = 0; $x < 4; $x++){
                            echo $userData[$x]['voornaam'] . ' ' . $userData[$x]['achternaam'] . '<br>';
                        }
                    }
                ?>

                <!-- Members -->
                <div id="moreMembers">
                    <p>All <i class="fas fa-users"></i></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 topCard" onclick="openCardBoxThree();">
            <div class="cardContent">
                <h5>Scoreboard</h5>

            </div>
        </div>
    </div>
</div>

<!-- Controls -->
<div class="container topPadding disableScroll">
    <div class="row">
        <div class="col-lg-12">
            <div id="controller">

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3" id="sendButtons">
            <h5 class="blockTitle">Send-to-bot</h5>
            <div>
                <button class="button" onclick="sendData('SPS');">SPS</button><br><br>
                <button class="button" onclick="sendData('DOOLHOF');">Doolhof</button><br><br>
                <button class="button" onclick="sendData('RACE');">Race</button><br><br>
                <button class="button" onclick="sendData('TEKENING');">Tekening</button><br><br>
                <button class="button" onclick="sendData('CLEAR');">Stop</button><br><br>
                <button class="button" onclick="sendData('Ready');">Ready</button>
            </div>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-8" id="console">
            <h5 class="blockTitle">Console</h5>
            <ul id="consoleUL">
                <?php
                    foreach($robotAction as $robotActions){
                        if($robotActions['clickValue'] != "sucess"){
                            $color = "red";
                        } else {
                            $color = "green";
                        }
                        $row    =   "<li class=\"consoleLog\" id=\"" . $robotActions['ActionID'] . "\">";
                        $row    .=  "<p>CMD -> </p>";
                        $row    .=  "<p>" . "&nbsp;" . $robotActions['keyChar'] . '&nbsp; -> Response:&nbsp;' . "</p><p style=\"color: " . $color . ";\">" . $robotActions['clickValue'] . "</p>";
                        $row    .=  "<p>&nbsp;&nbsp;&nbsp;&nbsp;<i>" . $robotActions['time'] . "</i></p>";
                        $row    .=  "</li>";
                        echo $row;
                    }
                ?>
            </ul>
        </div>
    </div>
</div>


<!-- Empty space -->
<div class="container topPadding"></div>

<!-- Take control -->
<div class="container">
    <div class="row">
        <div class="col-lg-12" id="takeControl">
            <button class="button" onclick="launchControls();">Take control!</button>
        </div>
    </div>
</div>

<!-- Launch overlay -->
<div class="launch" style="display: none;">
    <div id="exitLaunch"><i class="fas fa-times" onclick="closeLaunchControls();"></i></div>
    <div id="launchController">
        <!-- Content -->
        <i class="cloud fas fa-cloud" id="cloud1" onclick="sendData('Ready'); new Audio('/tpl/team/1E/quoteJetten.mp3').play();"></i>
        <i class="cloud fas fa-cloud" id="cloud2" onclick="sendData('Ready'); new Audio('/tpl/team/1E/quoteJetten.mp3').play();"></i>
        <i class="cloud fas fa-cloud" id="cloud3" onclick="sendData('Ready'); new Audio('/tpl/team/1E/quoteJetten.mp3').play();"></i>
    </div>

    <div id="centerJoystick" class="topZ">
        <div id="joystick" style="width: 128px">
            <img src="/tpl/team/1E/img/joystick/joystick-base.png"/>
            <div id="stick" style="position: absolute; left:32px; top:32px;">
                <img src="/tpl/team/1E/img/joystick/joystick-red.png"/>
            </div>
        </div>
    </div>

    <img id="grass" src="/tpl/team/1E/img/grass.png">
    <img id="baudet" src="/tpl/team/1E/img/baudet.png" alt="BauDADDY <3">
</div>

<!-- Footer space -->
<div class="container topPadding"></div>


<!-- CardBoxes -->

<!-- Card 1 -->
<div id="robotCardBox" class="cardBox" style="display: none;">
    <div class="container topPadding">
        <div class="row topPadding">
            <div class="col-lg-12">
                <h3><i class="fas fa-times" onclick="closeCardBoxOne();"></i>&nbsp;&nbsp;Robot specs</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <br>
                <!-- Titel -->
                <h5>Robot specs</h5>

                <!-- Details -->
                <p>{NAME}: <?php echo $RobotName;?></p>
                <p>Team: <?php echo $TeamID;?></p>
            </div>
        </div>
        <div class="row">
            <!-- Status -->
            <div id="robotStatus">
                <div id="<?php echo $botStatus; ?>"></div>
                <p>&nbsp;</p>
                <p><?php echo $botStatus; ?></p>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-6" id="divDesc_NL">
                <br><br>
                <h4>Bewerk beschrijving</h4>
                <form method="POST">
                    <textarea id="EditDesc_NL" name="EditDesc_NL"><?php echo $robotData[0]['TeamDesc_NL']; ?></textarea>
                    <button class="button" type="submit">Opslaan</button>
                </form>
            </div>
            <div class="col-lg-6" id="divDesc_EN">
                <br><br>
                <h4>Edit description</h4>
                <form method="POST">
                    <textarea id="EditDesc_EN" name="EditDesc_EN"><?php echo $robotData[0]['TeamDesc_EN']; ?></textarea>
                    <button class="button" type="submit">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Card 2 -->
<div id="membersCardBox" class="cardBox" style="display: none;">
    <div class="container topPadding">
        <div class="row topPadding">
            <div class="col-lg-12">
                <h3><i class="fas fa-times" onclick="closeCardBoxTwo();"></i>&nbsp;&nbsp;Members</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <br>
                <!-- Details -->
                <?php                
                    foreach ($userData as $userDetails){
                        echo $userDetails['voornaam'] . ' ' . $userDetails['achternaam'] . '<br>';
                    }
                ?>
            </div>
        </div>
    </div>
</div>

<!-- Card 3 -->
<div id="scoreCardBox" class="cardBox" style="display: none;">
    <div class="container topPadding">
        <div class="row topPadding">
            <div class="col-lg-12">
                <h3><i class="fas fa-times" onclick="closeCardBoxThree();"></i>&nbsp;&nbsp;Scoreboard</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <br>
                <!-- Details -->
                <table>
                    <thead>
                        <tr>
                            <th>Game</th>
                            <th>Score</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <br><br>
            </div>
        </div>
    </div>
</div>