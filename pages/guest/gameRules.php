<div class="container">
	<div id="gameRules">
		<div class="row">

			<!-- Race -->
		    <div class="col-sm-12 gameBlock" id="race" data-aos="fade-up">
		        <div class="row">
		            <div class="col-sm-6 gamePhoto photoLeft">
		                <h2 class="gameTitle titleLeft">Race</h2>
		                <img src="images/team/1A/logo.png" title="Team A" alt="Team A"> 
		            </div>
		            <div class="col-sm-6 neonBorder gameDescription">
		            	<h4>Spelregels</h4>
		                <p>Wanneer de “Start” commando wordt verstuurd naar de robot moet er een timer van start gaan die pas eindigt wanneer de robot bij de finish is. De tijd moet worden verstuurd naar de server en moet zichtbaar zijn in de interface.</p>
						<p>De robot begint in het midden van de doolhof (te zien op de plattegrond).</p>
						<p>Als de robot geheel van het pad is dan moet er een “Stop” commando worden verstuurd en wordt er voor de robot geen tijd geregistreerd.</p>
						<p>Robot mag met gedeeltes over de zwarte lijnen komen omdat de robot niet aan elke kant sensoren heeft waardoor hij het niet kan waarnemen. </p>
						<p>5 minuten de tijd om uit de doolhof te komen, als de robot het niet haalt binnen 5 min wordt er een “Stop” commando verstuurd naar de robot en wordt er geen tijd geregistreerd.</p>
						<p>Bij de “Finish” staat een obstakel (muur) die moet worden gedetecteerd door de ultrasonicsensor, als de robot er 5 cm van is stopt hij en wordt de tijd verstuurd naar de server.</p> 
						<h5>Scores</h5>

		            </div>
		        </div>
		    </div>

		    <!-- Maze -->
		    <div class="col-sm-12 gameBlock" id="maze" data-aos="fade-up">
		        <div class="row">
			            <div class="col-sm-6 neonBorder gameDescription">
		            	<h2>Spelregels</h2>
		                <p>Wanneer de “Start” commando wordt verstuurd naar de robot moet er een timer van start gaan die pas eindigt wanneer de robot bij de finish is. De tijd moet worden verstuurd naar de server en moet zichtbaar zijn in de interface.</p>
						<p>De robot begint in het midden van de doolhof (te zien op de plattegrond).</p>
						<p>Als de robot geheel van het pad is dan moet er een “Stop” commando worden verstuurd en wordt er voor de robot geen tijd geregistreerd.</p>
						<p>Robot mag met gedeeltes over de zwarte lijnen komen omdat de robot niet aan elke kant sensoren heeft waardoor hij het niet kan waarnemen. </p>
						<p>5 minuten de tijd om uit de doolhof te komen, als de robot het niet haalt binnen 5 min wordt er een “Stop” commando verstuurd naar de robot en wordt er geen tijd geregistreerd.</p>
						<p>Bij de “Finish” staat een obstakel (muur) die moet worden gedetecteerd door de ultrasonicsensor, als de robot er 5 cm van is stopt hij en wordt de tijd verstuurd naar de server.</p> 
						
						<h5>Scores:</h5>
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
		            <div class="col-sm-6 gamePhoto photoRight">
		            	<h2 class="gameTitle">Doolhof</h2>
		                <img src="images/team/1A/logo.png" title="Team A" alt="Team A"> 
		            </div>
		        </div>
		    </div>

		   	<!-- Rock, Paper, Scissors -->
		    <div class="col-sm-12 gameBlock" id="RPS" data-aos="fade-up">
		        <div class="row">
		            <div class="col-sm-6 gamePhoto">
		            	<h2 class="gameTitle">Rock, Paper, Scissors</h2>
		                <img src="images/team/1A/logo.png" title="Team A" alt="Team A"> 
		            </div>
		            <div class="col-sm-6 neonBorder gameDescription">
		            	<h4>Spelregels</h4>
		                <p>Dit spel bestaat uit 2 fasen. </p>
						<p>Fase 1:</p>
						<p>Iedereen speelt tegen iedereen een spel. Aan de hand van het aantal potjes gewonnen stijg je in de poule ranglijst.
						Steen wint van Schaar. Schaar wint van Papier en Papier wint van Steen.</p>

						<p>Fase 2:</p>
						<p>Aan de hand van je positie krijg je een plaats in de knockout ronde toegewezen. Deze wordt gunstiger naarmate je hoger in de 1e fase bent geëindigd.</p>
						<h5>Scores:</h5>
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
						</table>
		            </div>
		        </div>
		    </div>

		   	<!-- Drawing -->
		    <div class="col-sm-12 gameBlock" id="drawing" data-aos="fade-up">
		        <div class="row">
		            <div class="col-sm-6 neonBorder gameDescription">
		            	<h4>Spelregels</h4>
		                <p>De tekening challenge is een spel waarbij de robot een tekening maakt met een bepaald thema.</p>
		                <p>De robot krijgt een canvas waar hij in moet blijven.Voor meer dan 10 seconden buiten het canvas gaan betekent dan ook een ongeldige tekening waarbij geen score kan worden toegekend.</p>
		                <p>De winnaar zal worden gekozen door middel van een poll die achteraf wordt gerouleerd tussen de tekeningen waarbij alleen ingelogde gebruikers hun stem kunnen laten gelden.</p>
						<p>* Bij gelijk gemiddelde wordt gekeken welk team als eerste klaar is</p>
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
								<td>Ongeldige tekening:</td>
								<td>0 punten</td>
							</tr>
						</table>
		            </div>
		            <div class="col-sm-6 gamePhoto photoRight">
		            	<h2 class="gameTitle">Drawing</h2>
		                <img src="images/team/1A/logo.png" title="Team A" alt="Team A"> 
		            </div>
		        </div>
		    </div>
		</div>
	</div>
</div>

	