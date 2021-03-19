<div class="container">
	<div id="livestream">
		<div class="row">
			<div class="nextGameBlock col-lg-4">
				<h2 class="col-lg-12">Volgende Spel</h2>

				<!-- Dag -->
				<div class="col-lg-12">
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
				<div class="col-lg-12">
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
				<div class="col-lg-12">
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
				<div class="col-lg-12">
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
			<div class="liveVideoContainer col-lg-8">
				<h2>LiveStream</h2>
				<div id="cameraButtons">
					<button class="button">Camera1</button>
					<button class="button">Camera2</button>
				</div>
				<video controls>
					Your browser does not support the video tag.
				</video>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
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
			<div class="col-lg-6">
				<div class="neonBlock">
					<p>spelregels/poll</p>
				</div>
			</div>
		</div>
	</div>
</div>