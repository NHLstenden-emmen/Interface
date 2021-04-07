<div id="dashboard">
	<div class="liveFeed neonBlock1B" data-aos="zoom-in-down">
		<div class="videoBlock">
			<video id="livestreamVideo" poster="{assetsFolder}/images/poster.png">
				Je browser ondersteunt geen HTML5 video's.
			</video>
			<div class="videoDetails">
				<div class="videoUpload">
					<span class="videoTitle">Race</span>
					<span><i class="far fa-eye"></i>&nbsp;<span id="viewerCounter">0</span></span>
				</div>
				<div class="videoCamera">
					<button class="button small" onclick="cameraChange('dome')"><i
							class="fas fa-video"></i>&nbsp;&nbsp;1</button>
					<button class="button small" onclick="cameraChange('stream')"><i
							class="fas fa-video"></i>&nbsp;&nbsp;2</button>
				</div>
			</div>
		</div>
	</div>
	<div class="startGame neonBlock1B" data-aos="zoom-in-down">
		<h1>start the games</h1>
		<div id="startButton" data-aos="zoom-in-left">
			<div class="bigStart">
				<button onclick="Startup()">Start The Robot</button>
				<div class="icon"><i class="fas fa-play"></i>
				</div>
			</div>
		</div>
		
		<audio id="audio" src="{assetsFolder}/sound/Lenards_Team_Song.mpeg" style="display:none;"></audio>
		<div id="panicButton" data-aos="zoom-in-left">
			<div class="bigStop">
				<button onclick="stop()">PANIC BUTTON</button>
				<div class="icon">
					<i class="fas fa-skull-crossbones"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="console neonBlock1B" data-aos="zoom-in-down">
		<h1>console</h1>
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
function Startup() {
	var isPlaying = true;
	playSound(isPlaying);
	$(document).ready(function() {
		$.post("/tpl/team/1B/sendData.php", {
			'action': 'Startup'
		});
		var timestamp = '[' + Date.now() + '] ';
		console.log(timestamp + 'Startup');
	});
}
function stop() {
	var isPlaying = false;
	playSound(isPlaying);
	$(document).ready(function() {
		$.post("/tpl/team/1B/sendData.php", {
			'action': 'STOP'
		});
		var timestamp = '[' + Date.now() + '] ';
		console.log(timestamp + 'STOP');
	});
}
</script>