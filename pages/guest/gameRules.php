<div class="gameRulesContainer">
	<div class="gameRulesSection row">
		<div class="gameTitle row col-lg-12">
			<h4>Race</h4>
		</div>
		<div class="gameRulesImageContainer col-lg-6 col-xs-12">
			<!-- <img src="images/guest/race.png" alt="raceMap" class="gameRulesImage"> -->
		</div>
		<div class="gameRulesExplanation col-lg-6 col-xs-12">
			<div class="neonBlock">
				<div class="gameRules">
					<h4>Spelregels</h4>
					<p>
						Robots gaan één voor één racen over een lijn en de robot die het parcours als snelste aflegt is de winnaar. De robot mag niet van de lijn afraken. Als dit wel gebeurt is de betreffende robot gediskwalificeerd. De eindstand wordt bepaalt op tijd. Max tijd bedraagt 5 minuten. 
					</p> 
					<ul>
						<li>De race bevat geen bochten van 90 graden. </li>
						<li>De race wordt gestart via de server. </li>
						<li>De race stopt bij een door getrokken lijn.(zodat beide IR sensoren tegelijk een zwarte lijn detecteren)</li>
						<li>Robot geheel buiten de lijn is diskwalificatie. </li>
						<li>Indien geen enkele robot de eindstreep haalt wint de robot die het verst op het parcours is gekomen zonder van de lijn te komen en de daarop volgende is nr 2 enz.</li> 
					</ul>
					<p>Scores:</p>
					<table class="scoreTable">
						<tr>
							<td>1e plaats:</td>
							<td>10 punten</td>
						</tr>
						<tr>
							<td>2e plaats:</td>
							<td>8 punten</td>
						</tr>
						<tr>
							<td>3e plaats:</td>
							<td>6 punten</td>
						</tr>
						<tr>
							<td>4e plaats:</td>
							<td>4 punten</td>
						</tr>
						<tr>
							<td>5e plaats:</td>
							<td>2 punten</td>
						</tr>
						<tr>
							<td>Geen tijd:</td>
							<td>0 punten</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="gameRulesSection row">
		<div class="gameTitle row col-lg-12">
			<h4>Doolhof</h4>
		</div>
		<div class="gameRulesImageContainer col-lg-6 col-xs-12">
			<!-- <img src="images/guest/maze.png" alt="mazeMap" class="gameRulesImage"> -->
		</div>
		<div class="gameRulesExplanation col-lg-6 col-xs-12">
			<div class="neonBlock">
				<div class="gameRules">
					<h4>Spelregels</h4>
					<ul>
						<li>Wanneer de “Start” commando wordt verstuurd naar de robot moet er een timer van start gaan die pas eindigt wanneer de robot bij de finish is. De tijd moet worden verstuurd naar de server en moet zichtbaar zijn in de interface.</li>
						<li>De robot begint in het midden van de doolhof (te zien op de plattegrond).</li>
						<li>Als de robot geheel van het pad is dan moet er een “Stop” commando worden verstuurd en wordt er voor de robot geen tijd geregistreerd.</li>
						<li>Robot mag met gedeeltes over de zwarte lijnen komen omdat de robot niet aan elke kant sensoren heeft waardoor hij het niet kan waarnemen. </li>
						<li>5 minuten de tijd om uit de doolhof te komen, als de robot het niet haalt binnen 5 min wordt er een “Stop” commando verstuurd naar de robot en wordt er geen tijd geregistreerd.</li>
						<li>Bij de “Finish” staat een obstakel (muur) die moet worden gedetecteerd door de ultrasonicsensor, als de robot er 5 cm van is stopt hij en wordt de tijd verstuurd naar de server.</li> 
					</ul>
					<p>Scores:</p>
					<table class="scoreTable">
						<tr>
							<td>1e plaats:</td>
							<td>10 punten</td>
						</tr>
						<tr>
							<td>2e plaats:</td>
							<td>8 punten</td>
						</tr>
						<tr>
							<td>3e plaats:</td>
							<td>6 punten</td>
						</tr>
						<tr>
							<td>4e plaats:</td>
							<td>4 punten</td>
						</tr>
						<tr>
							<td>5e plaats:</td>
							<td>2 punten</td>
						</tr>
						<tr>
							<td>Geen tijd:</td>
							<td>0 punten</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="gameRulesSection row">
		<div class="gameTitle row col-lg-12">
			<h4>Steen, Papier, Schaar</h4>
		</div>
		<div class="gameRulesImageContainer col-lg-6 col-xs-12">
		<!-- 	<img src="images/guest/RSP.png" alt="RSP" class="gameRulesImage"> -->
		</div>
		<div class="gameRulesExplanation col-lg-6 col-xs-12">
			<div class="neonBlock">
				<div class="gameRules">
					<h4>Spelregels</h4>
					<p>Dit spel bestaat uit 2 fasen. </p>
					<p>Fase 1:</p>
					<p>Iedereen speelt tegen iedereen een spel. Aan de hand van het aantal potjes gewonnen stijg je in de poule ranglijst.
					Steen wint van Schaar. Schaar wint van Papier en Papier wint van Steen.</p>

					<p>Fase 2:</p>
					<p>Aan de hand van je positie krijg je een plaats in de knockout ronde toegewezen. Deze wordt gunstiger naarmate je hoger in de 1e fase bent geëindigd.</p>
					<p>Scores:</p>
					<table class="scoreTable">
						<tr>
							<td>1e plaats:</td>
							<td>10 punten</td>
						</tr>
						<tr>
							<td>2e plaats:</td>
							<td>8 punten</td>
						</tr>
						<tr>
							<td>3e plaats:</td>
							<td>6 punten</td>
						</tr>
						<tr>
							<td>4e plaats:</td>
							<td>4 punten</td>
						</tr>
						<tr>
							<td>5e plaats:</td>
							<td>2 punten</td>
						</tr>
						<tr>
							<td>Geen tijd:</td>
							<td>0 punten</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="gameRulesSection row">
		<div class="gameTitle row col-lg-12">
			<h4>Tekening</h4>
		</div>
		<div class="gameRulesImageContainer col-lg-6 col-xs-12">
	<!-- 		<img src="" class="gameRulesImage"> -->
		</div>
		<div class="gameRulesExplanation col-lg-6 col-xs-12">
			<div class="neonBlock">
				<div class="gameRules">
					<h4>Spelregels</h4>
					<p>De tekening challenge is een spel waarbij de robot een tekening maakt met een bepaald thema. De robot krijgt een canvas waar hij in moet blijven. Voor meer dan 10 seconden buiten het canvas gaan betekent dan ook een ongeldige tekening waarbij geen score kan worden toegekend. De winnaar zal worden gekozen door middel van een poll die achteraf wordt gerouleerd tussen de tekeningen waarbij alleen ingelogde gebruikers hun stem kunnen laten gelden.</p>
					<p>* Bij gelijk gemiddelde wordt gekeken welk team als eerste klaar is</p>
					<p>Scores:</p>
					<table class="scoreTable">
						<tr>
							<td>1e plaats:</td>
							<td>10 punten</td>
						</tr>
						<tr>
							<td>2e plaats:</td>
							<td>8 punten</td>
						</tr>
						<tr>
							<td>3e plaats:</td>
							<td>6 punten</td>
						</tr>
						<tr>
							<td>4e plaats:</td>
							<td>4 punten</td>
						</tr>
						<tr>
							<td>5e plaats:</td>
							<td>2 punten</td>
						</tr>
						<tr>
							<td>Geen geldige tekening:</td>
							<td>0 punten</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>