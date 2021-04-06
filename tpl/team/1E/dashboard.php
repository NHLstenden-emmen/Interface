<!-- Styling kan weg wanneer loginsysteem klaar is -->
<?php

    echo '<link rel="stylesheet" href="/tpl/assets/css/team/1E/dashboard.css" />';
    if(isset($_POST['editTeamDetails']) && isset($_POST['teamDescription'])){
        $teamDescNew = $filter->sanatizeInput($_POST['teamDescription'], "string");
        $DB->Update("UPDATE teams SET TeamDesc_NL = ? WHERE TeamID = '1E'", [$teamDescNew]);
    }
    $data = $DB->Select("SELECT * FROM teams WHERE TeamID = '1E'");
    foreach($data as $value){
        $teamDesc = $value['TeamDesc_NL'];
    }
	
	if (isset($_GET['ready'])) {
		var_dump($socket->sendStartToBot("ROBot Jetten"));
	}


?>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<button class="botReady" onclick="sendData('Ready');readyBot();playAudio('/tpl/team/1E/quoteJetten.mp3');">Ready</button>
<div id="terrorRob" class=""></div>

<div class="container" id="block">
    <div class="pageBar">
        <div>
            <h2 id="titel">Dashboard</h2>
            <p id="desc">Groep INF1E</p>
        </div>
    </div>    
    <div class="row">
        <div data-aos="fade-right" class="col-lg-6 block" id="block1">
            <div class="neonBlock content" id="keyboardListen" tabindex="0">
                <h5 class="blockTitle">Controle</h5>
                <div class="row">
                    <div class="col-lg-6">
                        <iframe src="/tpl/team/1E/joy.html" scrolling="no" title="JoyStick"></iframe>
                    </div>
                    <div class="col-lg-6" id="WASD">
                        <!-- Hiertussen komen de WASD knoppen -->
                        <div class="container">
                            <div class="row-one">
                                <button class="button" onclick="sendData('W')">W</button>
                            </div>
                            <div class="row-two">
                                <button class="button" onclick="sendData('A')">A</button>
                                <button class="button" onclick="sendData('S')">S</button>
                                <button class="button" onclick="sendData('D')">D</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div data-aos="fade-down" class="col-lg-3 block" id="block2">
            <div class="neonBlock content">
                <h5 class="blockTitle">Commands</h5>
                <button type="button" class="button" onclick="sendData('Stop')" name="button">Stop</button><br><br>
                <button type="button" class="button" onclick="sendData('SPS')" name="button">Start SPS</button><br><br>
                <button type="button" class="button" onclick="sendData('DOOLHOF')" name="button">Start Doolhof</button><br><br>
                <button type="button" class="button" onclick="sendData('RACE')" name="button">Start Race</button><br><br>
                <button type="button" class="button" onclick="sendData('TEKENING')" name="button">Start Tekening</button>
            </div>
        </div>
        <div data-aos="fade-left" class="col-lg-3 block" id="block3">
            <div class="neonBlock content">
                <h5 class="blockTitle">Stand</h5>
            </div>
        </div>
    </div>
    <div class="row">
        <div data-aos="fade-right" class="col-lg-6 block" id="block4">
            <div class="neonBlock content">
                <h5 class="blockTitle">Huidige game</h5>
            </div>
        </div>
        <div data-aos="fade-left" class="col-lg-6 block" id="block5">
            <div class="neonBlock content">
                <h5 class="blockTitle">Speelschema</h5>
                <!-- Display afhankelijk van spel -->
                <table id="schemaSPS">
                    <tr>
                        <th>Spel</th>
                        <th>Spelers</th>
                        <th>Tijd</th>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                    <tr>
                        <td>SPS</td>
                        <td>Robot A vs Robot E</td>
                        <td>13:05</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div data-aos="fade-right" class="col-lg-6 block" id="block6">
            <div class="neonBlock content">
                <h5 class="blockTitle">Historie</h5>
            </div>
        </div>
        <div data-aos="fade-left" class="col-lg-6 block" id="block7">
            <div class="neonBlock content">
                <h5 class="blockTitle">Console</h5>
                <div id="console">
                    <p class="blink">></p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                    <p class="error">> Error excecuting function; line 34 invalid syntax</p>
                    <p>> Excecute function followLine();</p>
                    <p class="correct">> Connected to server as ROBOT#1323</p>
                    <p>> Connecting to server</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div data-aos="fade-left" class="col-lg-12 block" id="block8">
            <div class="neonBlock content">
                <h5 class="blockTitle">Teaminformatie</h5>
                <form method="POST">
                        <textarea rows="4" cols="50" id="teamDescription"
                        name="teamDescription"><?php echo $teamDesc; ?></textarea>
                    <input type="submit" name="editTeamDetails" value="Submit">
                </form>
            </div>
        </div>
    </div>
</div>
<script>

    function playAudio(url) {
        new Audio(url).play();
    }

    function readyBot()
    {
        $(document).ready(function(){
            $("#terrorRob").addClass("showRob");
            hideRob();
        });
        sendData('Ready');
    }

    function hideRob() {
    setTimeout(
        function() {            
            $("#terrorRob").removeClass("showRob");
            $("#terrorRob").addClass("hideRob");
            removeRob();
        }, 5000);
    }

    function removeRob() {
    setTimeout(
        function() {
            $("#terrorRob").removeClass("hideRob");
        }, 1000);
    }

    $(function() {
        $('#keyboardListen').focus();
    });

    var lastKeyboard;

    $('#keyboardListen').on('keydown', function(event) {

        window.addEventListener('keydown', function(e) {
            if (e.keyCode == 32 && e.target == document.body) {
                e.preventDefault();
            }
        });
        $(document).keydown(function(event) {

            // Stoppen [Stop]
            if (event.which === 32) {
                if (event.which !== lastKeyboard) {
                    lastKeyboard = 32;
                    sendData('Stop');
                }
            }

            // Naar voren [W]
            if (event.which === 87) {
                if (event.which != lastKeyboard) {
                    lastKeyboard = 87;
                    sendData('W');
                }
            }

            // Naar achteren [S]
            if (event.which === 83) {
                if (event.which != lastKeyboard) {
                    lastKeyboard = 83;
                    sendData('S');
                }
            }

            // Naar links [A]
            if (event.which === 65) {
                if (event.which != lastKeyboard) {
                    lastKeyboard = 65;
                    sendData('A');
                }
            }

            // Naar rechts D
            if (event.which === 68) {
                if (event.which != lastKeyboard) {
                    lastKeyboard = 68;
                    sendData('D');
                }
            }

        });
    });

    function sendData(data) {
        $(document).ready(function() {
            $.post("", {
                'action': data
            });
            var timestamp = '[' + Date.now() + '] ';
            console.log(timestamp + data);
        });
    }

</script>

<?php
    if(isset($_GET['command']))
    {
        $command = $_GET['command'];
        echo "<script>sendData('" . $command . "');</script>";
    }
?>