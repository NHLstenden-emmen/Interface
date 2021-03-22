<div id="livestreamContainer" class="container">
	<div class="row">
		<div class="block col-lg-3">
			<h2 class="col-lg-12">Volgende Spel</h2>
			<div class="row">

				<!-- Dag -->
				<div class="col-3 col-lg-12">
					<table class="nextGame">
						<thead>
							<tr>
								<th>1</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Dag</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- Uren -->
				<div class="col-3 col-lg-12">
					<table class="nextGame">
						<thead>
							<tr>
								<th>12</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Uur</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- Minuten -->
				<div class="col-3 col-lg-12">
					<table class="nextGame">
						<thead>
							<tr>
								<th>40</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Min</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- Seconden -->
				<div class="col-3 col-lg-12">
					<table class="nextGame">
						<thead>
							<tr>
								<th>32</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Sec</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>
		<div class="liveVideoContainer block col-lg-6">
			<h2>LiveStream</h2>
			<div id="cameraButtons" class="row">
				<button class="button">Camera1</button>
				<button class="button">Camera2</button>
			</div>
			<div class="row">
				<video controls>
					Your browser does not support the video tag.
				</video>
			</div>
		</div>
		<div class="col-lg-3 block"> 
			<h2 class="col-lg-12">Live Chat</h2>
		</div>
	</div>
	<div class="row justify-content-between gameDetailsContainer">
		<div class="col-12 col-lg-3">
			<div class="neonBlock gameDetailsSection">
				<!-- Door de ontvangen data heen lopen -->
				<?php
					echo "<table id='gameDetailsTable'>";
					echo "<tr>";
					echo "<td>Team A</td>";
					echo "<td>2 pnt</td>";
					echo "</tr>";
					echo "<tr>";
					echo "<td>Team B</td>";
					echo "<td>1 pnt</td>";
					echo "</tr>";
					echo "</table>";
				?>
				<!-- Data duur game -->
				<p>00:02:40</p>
			</div>
		</div>

		<!-- Spelregels dialog -->
		<div class="col-12 col-lg-6">
			<dialog id="gameRulesDialog" class="neonBlock" close>
				<h3>Spelregels</h3>
				<p id="gameRules"></p>
				<button onclick="toggleGameRules()">Close</button>
			</dialog>
		</div>

		<div class="col-12 col-lg-3">
			<div class="neonBlock gameDetailsSection gameDetailIcons">
				<button onclick="toggleGameRules()"><i class="fas fa-info-circle fa-3x"></i></button>
				<button><i class="fas fa-poll fa-3x"></i></button>
			</div>
		</div>
	</div>
</div>

<script>
	function toggleGameRules() {
		var dialogGameRules = document.getElementById("gameRulesDialog");
		if (dialogGameRules.open) {
			dialogGameRules.open = false;
		} else {
			dialogGameRules.open = true;
		}
	}
</script>