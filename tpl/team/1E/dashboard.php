<?php

/*
 *
 *  PHP HANDLERS
 * 
 */

/* Custom params */
$TeamID = "1E";
$RobotName = "ROBot Jetten";
$GroupID = 13;

/* Send Data to Robot */
if (isset($_POST['action'])) {

    $action = $_POST['action'];

    if ($action == "Stop") {
        $command = "a";
    }

    if ($action == "CLEAR") {
        $command = "0";
    }

    // Straight angles

    // voor
    if ($action == "W") {
        $command = "b";
    }
    // links
    if ($action == "A") {
        $command = "e";
    }
    // achter
    if ($action == "S") {
        $command = "c";
    }
    // rechts
    if ($action == "D") {
        $command = "d";
    }

    // Custom angles

    if ($action == "WA") {
        $command = "w";
    }
    if ($action == "WD") {
        $command = "q";
    }
    if ($action == "SD") {
        $command = "m";
    }
    if ($action == "SA") {
        $command = "n";
    }

    // Commands
    if ($action == "SPS") {
        $command = "4";
    }

    if ($action == "DOOLHOF") {
        $command = "3";
    }

    if ($action == "RACE") {
        $command = "1";
    }

    if ($action == "TEKENING") {
        $command = "2";
    }

    // Ready
    if ($action == "Ready") {
        print_r($socket->sendStartToBot($RobotName));
        die();
    }

    // Send Data
    $sendData = $socket->sendToBot($RobotName, $command);
    if ($sendData == "bot_not_online") {
        // Niet online
    } else if ($sendData == "success") {
        // Success
    } else {
        // Andere error
    }

    echo $sendData;

    die();
}

/* Form handling */
if (isset($_POST['EditDesc_NL']) || isset($_POST['EditDesc_EN'])) {
    if (isset($_POST['EditDesc_NL']) && trim($_POST['EditDesc_NL']) != "") {
        $DB->Update("UPDATE teams SET TeamDesc_NL = ? WHERE TeamID = ?", [$_POST['EditDesc_NL'], $TeamID]);
        unset($_POST['TeamDesc_NL']);
    } else if (isset($_POST['EditDesc_EN']) && trim($_POST['EditDesc_EN']) != "") {
        $DB->Update("UPDATE teams SET TeamDesc_EN = ? WHERE TeamID = ?", [$_POST['EditDesc_EN'], $TeamID]);
        unset($_POST['TeamDesc_EN']);
    } else {
        // Error inserting data
    }
}

/* Data from database */
$robotData = $DB->Select("SELECT * FROM teams WHERE TeamID = ?", [$TeamID]);
$userData = $DB->Select("SELECT * FROM users WHERE Team = ?", [$TeamID]);
$robotResults = $DB->Select("SELECT * FROM punten WHERE robot = ?", [$RobotName]);

/* Data from socket */
if ($botList = $socket->getBotList()) {
    $botStatus = "Offline";
    foreach (json_decode(json_encode($botList), true) as $key => $botInArray) {
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
<div class="container cardBlock disableScroll">
    <div class="row cardList" data-aos="fade-up">
        <div class="col-lg-4 topCard" onclick="openCardBoxOne();">
            <div class="cardContent" id="robot">
                <!-- Titel -->
                <h5>Robot specs</h5>

                <!-- Details -->
                <p>{NAME}: <?php echo $RobotName; ?></p>
                <p>Team: <?php echo $TeamID; ?></p>

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
                if (count($userData) < 4) {
                    for ($x = 0; $x < count($userData); $x++) {
                        echo $userData[$x]['firstName'] . ' ' . $userData[$x]['lastName'] . '<br>';
                    }
                } else {
                    for ($x = 0; $x < 4; $x++) {
                        echo $userData[$x]['firstName'] . ' ' . $userData[$x]['lastName'] . '<br>';
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
                <?php
                foreach ($robotResults as $result) {
                    echo '<p>' . $result['game'] . ': ' . $result['score'] . '</p>';
                }
                ?>
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
                <button class="button" onclick="sendData('SPS');">SPS</button>
                <br><br>
                <button class="button" onclick="sendData('DOOLHOF');">Doolhof</button>
                <br><br>
                <button class="button" onclick="sendData('RACE');">Race</button>
                <br><br>
                <button class="button" onclick="sendData('TEKENING');">Tekening</button>
                <br><br>
                <button class="button" onclick="sendData('CLEAR');">Stop</button>
                <br><br>
                <button class="button" onclick="sendData('Ready');">Ready</button>
            </div>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-8" id="console">
            <h5 class="blockTitle">Console</h5>
            <ul id="consoleUL">
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

<!-- Empty space -->
<div class="container topPadding"></div>

<!-- ROB Jetten -->
<div class="container-fluid" id="toespraak">
    <div class="row">
        <div class="col-lg-6" id="jettenWalk"
             onclick="openToespraak(); new Audio('/tpl/team/1E/audio/quoteJetten.mp3').play();">
            <img id="jettenLopen" src="/tpl/team/1E/img/jetten_lopen.png"/>
        </div>
        <div class="col-lg-6" id="toespraakInformatie">
            <h4><b>Sigrid Kaag is al bezig met de overwinningsspeech!</b></h4>
            <h4 style="margin-top: 15px;"><b id="twitterLink">#HupROBotJetten</b></h4>
            <br><br><br><br>
            <div class="row" id="groupMembers">
                <div class="col-sm-4">
                    <i class="fas fa-network-wired"></i>
                    <br>
                    <p>Simchaja Schonewille</p>
                </div>
                <div class="col-sm-4">
                    <i class="fas fa-laptop-code"></i>
                    <br>
                    <p>Feike Falkena</p>
                    <p>Tamme Tuncil</p>
                </div>
                <div class="col-sm-4">
                    <i class="fas fa-robot"></i>
                    <br>
                    <p>Erik Jan Zandberg</p>
                    <p>Peter Bos</p>
                    <p>Daisy Bruggeman</p>
                    <p>John Horstman</p>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Launch overlay -->
<div class="launch" style="display: none;">
    <div id="exitLaunch"><i class="fas fa-times" onclick="closeLaunchControls();"></i></div>
    <div id="launchController">
        <!-- Content -->
        <i class="cloud fas fa-cloud" id="cloud1"
           onclick="sendData('Ready'); new Audio('/tpl/team/1E/audio/quoteJetten.mp3').play();"></i>
        <i class="cloud fas fa-cloud" id="cloud2"
           onclick="sendData('Ready'); new Audio('/tpl/team/1E/audio/quoteJetten.mp3').play();"></i>
        <i class="cloud fas fa-cloud" id="cloud3"
           onclick="sendData('Ready'); new Audio('/tpl/team/1E/audio/quoteJetten.mp3').play();"></i>
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
                <p>{NAME}: <?php echo $RobotName; ?></p>
                <p>Team: <?php echo $TeamID; ?></p>
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
                foreach ($userData as $userDetails) {
                    echo $userDetails['firstName'] . ' ' . $userDetails['lastName'] . '<br>';
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
                    <?php
                    foreach ($robotResults as $results) {
                        $row = "<tr><td>";
                        $row .= $results['game'];
                        $row .= "</td><td>";
                        $row .= $results['score'];
                        $row .= "</td></tr>";
                        echo $row;
                    }
                    ?>
                    </tbody>
                </table>
                <br><br>
            </div>
        </div>
    </div>
</div>