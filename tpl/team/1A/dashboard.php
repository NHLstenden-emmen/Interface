<div class="container" id="block">
    <div class="pageBar">
        <div>
            <h2 id="titel">Dashboard</h2>
            <p id="desc">Groep INF1A</p>
        </div>
    </div>
	
	<div class="row">
		<div data-aos="fade-right" class="col-lg-6 block dashboardBlock">
			<div class="neonBlock content">
				<h3>Team Informatie</h3>
				<p>
					<?php
						// post form ophalen
						if(isset($_POST['editTeamDetails']) && isset($_POST['robotName']) && isset($_POST['teamDescription'])){
							//sanitize
							$robotNameNew = $filter->sanatizeInput($_POST['robotName'], "string");
							$teamDescNew = $filter->sanatizeInput($_POST['teamDescription'], "string");
							//update
							$DB->Update("UPDATE teams SET RobotName = ?, TeamDesc = ? WHERE TeamId = '1A'", [$robotNameNew, $teamDescNew]);
						}
						//Data ophalen
						$data = $DB->Select("SELECT * FROM teams WHERE teamID = '1A'");
						foreach($data as $value)
						{
							$teamDesc = $value['TeamDesc'];
							$robotName = $value['RobotName'];
						}
						echo $robotName; 
						echo $teamDesc;
						
					?>
					<!-- FORMULIER -->
					<form method="POST">
						<input type="text" id="robotName" name="robotName" value="<?php echo $robotName; ?>" required><br>
						<textarea id="teamDescription" rows="4" cols="50"
							name="teamDescription"><?php echo $teamDesc; ?></textarea><br>
						<input class="button" type="submit" name="editTeamDetails" value="Submit">
					</form>
				</p>
			</div>
		</div>
		<div data-aos="fade-down" class="col-lg-5 block dashboardBlock">
			<div class="neonBlock content">
				<h3>Command</h3>
				<button class="button" type="button" onclick="start()" name="button">Ready</button>
			</div>
		</div>
	</div>

	<div class="row">
		<div data-aos="fade-up" class="col-lg-12 block">
			<h3>Hier komt het creatief element</h3>
		</div>
	</div>
</div>

<section data-aos="fade-up" id="teamPeople">
  <h1>The A-Team</h1>
  <div class="container" id="team">
  	<div class="row justify-content-center">
    	<h2 class="teamPeopleTitle">Projectgroep A</h2>
	</div>
    <div class="row text-center">
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fas fa-laptop"></i>
            <h3>Interface Design</h3>
            <p>Hylke Sijbesma</p>
            <p>Tamara Kijk in de Vegte</p>
            <p>Sjouke van der Wal</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fas fa-microchip"></i>
            <h3>Robot</h3>
            <p>Lucas Haijtink</p>
            <p>Yaëll Kuipers</p>
            <p>Jeffrey Roossien</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fas fa-server"></i>
            <h3>Server</h3>
            <p>Remco van Oenen</p>
            <p>Nick Wind</p>
        </div>
    </div>
  </div>
</section>       
   
	<?php
		// include 'element.html';
	?>

<script>
	function start() {
        
	}
</script>