<!-- Styling kan weg wanneer loginsysteem klaar is -->

<?php

// echo '<link rel="stylesheet" href="css/pages/team/1E/dashboard.css" />';
// echo '<link rel="stylesheet" media="screen and (min-device-width: 1440px)" href="css/pages/team/1E/desktop-style.css" />';
// echo '<link rel="stylesheet" media="screen and (min-width: 800px) and (max-width: 1439px)" href="css/pages/team/1E/tablet-style.css" />';
// echo '<link rel="stylesheet" media="screen and (min-width: 100px) and (max-width: 799px)" href="css/pages/team/1E/mobile-style.css" />';
// echo '<link rel="stylesheet" href="css/pages/team/1E/background.css" />';
 echo '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>';

?>


<div class="containerDashboard" id="block">
    <div class="pageBar">
        <div>
            <h2 id="titel">Dashboard</h2>
            <p id="desc">Groep INF1E</p>
        </div>
        <a class="logout button" href="#">Log uit</a>
    </div>

    <div class="row">
        <div data-aos="fade-right" class="col-lg-6 block" id="block1">
            <div class="neonBlock content">
                <h5 class="blockTitle">Controle</h5>
                <div class="row">
                    <div class="col-lg-6">
                        <iframe src="pages/team/1E/joy.html" scrolling="no" title="JoyStick"></iframe>
                    </div>
                    <div class="col-lg-6" id="WASD">
                        <!-- Hiertussen komen de WASD knoppen -->
                        <div class="container">
                            <div class="row-one">
                                <button onclick="joystickW()">W</button>
                            </div>
                            <div class="row-two">
                                <button onclick="joystickA()">A</button>
                                <button onclick="joystickS()">S</button>
                                <button onclick="joystickD()">D</button>
                            </div>
                        </div>

                        <script>

                        function stop() {
                            $(document).ready(function() {
                                $.post("pages/team/1E/joystick/sendData.php",{'action':'Stop'});
                                var timestamp = '[' + Date.now() + '] ';
                                console.log(timestamp + 'Stop');
                            });
                        }

                        function joystickW() {
                            $(document).ready(function() {
                                $.post("pages/team/1E/joystick/sendData.php",{'action':'W'});
                                var timestamp = '[' + Date.now() + '] ';
                                console.log(timestamp + 'W');
                            });
                        }

                        function joystickA() {
                            $(document).ready(function() {
                                $.post("pages/team/1E/joystick/sendData.php",{'action':'A'});
                                var timestamp = '[' + Date.now() + '] ';
                                console.log(timestamp + 'A');
                            });
                        }

                        function joystickS() {
                            $(document).ready(function() {
                                $.post("pages/team/1E/joystick/sendData.php",{'action':'S'});
                                var timestamp = '[' + Date.now() + '] ';
                                console.log(timestamp + 'S');
                            });
                        }

                        function joystickD() {
                            $(document).ready(function() {
                                $.post("pages/team/1E/joystick/sendData.php",{'action':'D'});
                                var timestamp = '[' + Date.now() + '] ';
                                console.log(timestamp + 'D');
                            });
                        }
                        </script>
                        <!-- Hiertussen komen de WASD knoppen -->
                    </div>
                </div>
            </div>
        </div>
        <div data-aos="fade-down" class="col-lg-3 block" id="block2">
            <div class="neonBlock content">
                <h5 class="blockTitle">Commands</h5>
                <button type="button" onclick="test()"name="button">Test</button>
                <script>
                function test() {
                    $(document).ready(function() {
                        $.post("pages/team/1E/joystick/sendData.php",{'action':'test'});
                        var timestamp = '[' + Date.now() + '] ';
                        console.log(timestamp + 'test');
                    });
                }
                </script>

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
</div>
