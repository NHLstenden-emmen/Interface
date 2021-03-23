<div id="panicButton">
	<div class="bigStop">
		<button onclick="stop()">STOP THE BOT</button>
		<div class="icon">
			<!-- <i class="fas fa-times"></i> -->
			<i class="fas fa-skull-crossbones"></i>
		</div>
	</div>
</div>
<div id="dashboard">
	<div class="liveFeed neonBlock1B">
		<h1>liveFeed</h1>
	</div>
	<div class="startGame neonBlock1B">
		<h1>start the games</h1>
		<table id="startGameBlock">
			<tr class="top-line">
				<th>game name</th>
				<th>score</th>
				<th>start</th>
				<th>Stop</th>
			</tr>
			<tr class="side-line">
				<th>Race:</th>
				<td>0</td>
				<td><i class="fas fa-play"></i></td>
				<td><i class="fas fa-stop"></i></td>
			</tr>
			<tr class="side-line">
				<th>Doolhof:</th>
				<td>0</td>
				<td><i class="fas fa-play"></i></td>
				<td><i class="fas fa-stop"></i></td>
			</tr>
			<tr class="side-line">
				<th>sps:</th>
				<td>0</td>
				<td><i class="fas fa-play"></i></td>
				<td><i class="fas fa-stop"></i></td>
			</tr>
			<tr class="side-line">
				<th>Tekening:</th>
				<td>0</td>
				<td><i class="fas fa-play"></i></td>
				<td><i class="fas fa-stop"></i></td>
			</tr>
		</table>
	</div>
	<div class="liveChat neonBlock1B">
		<h1>liveChat</h1>
	</div>
	<div class="console neonBlock1B">
		<h1>console</h1>
	</div>
	<div class="robotControl neonBlock1B">
		<h1>Robot control</h1>
		
		<div class="row-one">
			<button onclick="joystickW()">W</button>
		</div>
		<div class="row-two">
			<button onclick="joystickA()">A</button>
			<button onclick="joystickS()">S</button>
			<button onclick="joystickD()">D</button>
		</div>
	</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function stop() {
		$(document).ready(function() {
			$.post("pages/team/1B/botControls/sendData.php",{'action':'Stop'});
			var timestamp = '[' + Date.now() + '] ';
			console.log(timestamp + 'Stop');
		});
	}

	function joystickW() {
		$(document).ready(function() {
			$.post("pages/team/1B/botControls/sendData.php",{'action':'W'});
			var timestamp = '[' + Date.now() + '] ';
			console.log(timestamp + 'W');
		});
	}

	function joystickA() {
		$(document).ready(function() {
			$.post("pages/team/1B/botControls/sendData.php",{'action':'A'});
			var timestamp = '[' + Date.now() + '] ';
			console.log(timestamp + 'A');
		});
	}

	function joystickS() {
		$(document).ready(function() {
			$.post("pages/team/1B/botControls/sendData.php",{'action':'S'});
			var timestamp = '[' + Date.now() + '] ';
			console.log(timestamp + 'S');
		});
	}

	function joystickD() {
		$(document).ready(function() {
			$.post("pages/team/1B/botControls/sendData.php",{'action':'D'});
			var timestamp = '[' + Date.now() + '] ';
			console.log(timestamp + 'D');
		});
	}
</script>