<?php 

 /* Custom params */
$TeamID = "1B";
$RobotName = "Dimitri";

/* Send Data to Robot */
if(isset($_POST['action'])){

	$action = $_POST['action'];

    if($action == "STOP"){
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

    // Commands
	
	if($action == "RACE"){
		$command = "1";
	}
	
	if($action == "TEKENING"){
		$command = "2";
	}

	if($action == "DOOLHOF"){
		$command = "3";
	}
	
	if($action == "SPS"){
		$command = "4";
	}

    // Ready
    if($action == "Ready"){
        print_r($socket->sendStartToBot($RobotName));
        die();
    }

    // Send Data
    $sendData = $socket->sendToBot($RobotName, $command);
}
?>

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
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('TEKENING');">Start The TEKENING</button>
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('DOOLHOF');">Start The DOOLHOF</button>
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>

			<div class="bigStart">
				<button onclick="sendData('SPS');">Start The SPS</button>
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>
		</div>
		
		<audio id="audio" src="{assetsFolder}/sound/Lenards_Team_Song.mpeg" style="display:none;"></audio>
		<div id="panicButton" data-aos="zoom-in-left">
			<div class="bigStop">
				<button onclick="sendData('STOP');">PANIC BUTTON</button>
				<div class="icon">
					<i class="fas fa-skull-crossbones"></i>
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
</script>