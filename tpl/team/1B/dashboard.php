<?php 

 /* Custom params */
$TeamID = "1B";
$RobotName = "Dimitri";

/* Send Data to Robot */
if (isset($_POST['action'])) {

    $action = $_POST['action'];

    if ($action == "Stop") {
        $command = "a";
    }

    if ($action == "CLEAR") {
        $command = "0";
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
?>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<div id="dashboard">
	<div class="liveFeed neonBlock1B" data-aos="zoom-in-down">
		<div class="videoBlock">
			<video id="my-video" class="video-js" controls preload="auto" width="100%" height="100%" data-setup="{}">
				<source id="streamSource" src="/streams/dome.m3u8" type="application/vnd.apple.mpegurl" />
				<p class="vjs-no-js">
					JavaScript moet aan staan wel licht staat het niet aan op uw browser
				</p>
			</video> 
		</div>
	</div>
	<div class="startGame neonBlock1B" data-aos="zoom-in-down">
		<h1>start the games</h1>
		<div id="startButton" data-aos="zoom-in-left">
			<div class="bigStart">
				<button onclick="sendData('Ready');">Start The Robot</button>
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('RACE');">Start The RACE</button>
				<div class="icon">
					<i class="fas fa-flag-checkered"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('TEKENING');">Start The TEKENING</button>
				<div class="icon">
					<i class="fas fa-pencil-alt"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('DOOLHOF');">Start The DOOLHOF</button>
				<div class="icon">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26.00005 26.007172" height="18px" width="18px">
						<g id="layer1" transform="translate(0,-270.99283)">
							<path style="fill:none;stroke:#ffffff;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" d="m 10.50005,296.49288 v 0 -5 h -5 v -5 h 10 v 5 h 5.000001 v -10 H 15.50005"></path>
							<path style="fill:none;stroke:#ffffff;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" d="m 5.50005,296.49288 h -5 v -15 h 10 v -5 h -5"></path>
							<path style="fill:none;stroke:#ffffff;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" d="m 0.50005,276.49288 v -5 h 15 v 5 h 5.000001"></path>
							<path style="fill:none;stroke:#ffffff;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" d="m 15.50005,271.49288 h 10 v 25 h -15"></path>
						</g>
					</svg>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('SPS');">Start The SPS</button>
				<div class="icon">
					<i class="fas fa-hand-scissors"></i>
				</div>
			</div>
		</div>
		
		<audio id="audio" src="{assetsFolder}/sound/Lenards_Team_Song.mpeg" style="display:none;"></audio>
		<div id="panicButton" data-aos="zoom-in-left">
			<div class="bigStop">
				<button onclick="sendData('Stop');">PANIC BUTTON</button>
				<div class="icon">
					<i class="fas fa-hand-paper"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="credits neonBlock1B" data-aos="zoom-in-down">
		<div data-aos="zoom-in-left">
		<h1>En nu wat woorden van Dimitri hemzelf</h1>
		<div class="container">
			<div class="row text-center">
				<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="far fa-grin-hearts"></i>
					<p>Dankzij <span>Kevin Smulders</span> ziet mijn dashboard er zo grandioos uit. </p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="fas fa-brain"></i>
					<p>Dankzij <span>Julian Jager</span> en zijn hulpje <span>Niels Stevens</span> Werkt mijn brein perfect via het internet</p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="fas fa-robot"></i>
					<p>Dankzij het krachtige leiderschap van mijn hoofd professor <span>Tom de Groot</span> Sta ik er helemaal klaar voor om alle spellen te winnen. </p>
					<p>Maar dit was nooit mogelijk geweest zonder de hulpjes die een luier bij mij hebben gemaakt om mijn stift in te steken:</p>
					<span>Cecile Richetti |</span>
					<span>Arjan Loof |</span>
					<span>Ömer Avci</span>
				</div>
			</div>
		</div> 
	</div>
</div>
</div>
<script>

function playSound(isPlaying){
	var audio = document.getElementById("audio");
    if (isPlaying){
        isPlaying = true
        audio.play()
    } 
    else{
        isPlaying = false
        audio.pause()
        audio.currentTime = 0
    }
}

function sendData(data) {
    var current = new Date();
    var logLine;
    $(document).ready(function () {
        $.ajax({
            type: 'POST',
            url: '',
            data: {
                'action': data
            }
        });
    });
}
</script>