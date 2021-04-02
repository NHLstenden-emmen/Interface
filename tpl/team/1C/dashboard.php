		<?php 
		$botnaam='BrokkoBot' ;
		
			if(isset($_POST['Ready'])){
				var_dump($socket->sendStartToBot($botnaam));
			}
		?>
		<div class="titleinf1c">
			<h3 id="titleinf1c">Dashboard</h3>
			<p id="titleinf1c">Groep INF1C</p>
		</div>

		<div class="container2delen">
			<div class="vaklinks neonBorder">
				<p><h3 class="Ctitels"> Controle </h3></p> 
					<form method="post">
						<button class="button" type="submit" name="Ready">Ready!</button>
					</form>
			</div>
			<div class="vakrechts neonBorder">
				<img class="brokkobot" src="{assetsFolder}/images/team/1C/Brokobot2kopie.png">
				<img class="brokkobottekst" src="{assetsFolder}/images/team/1C/BrokkobotTekst.png">
			</div>
		</div>

