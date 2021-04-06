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
							$DB->Update("UPDATE teams SET RobotName = ?, TeamDesc_NL = ? WHERE TeamId = '1A'", [$robotNameNew, $teamDescNew]);
						}
						//Data ophalen
						$data = $DB->Select("SELECT * FROM teams WHERE teamID = '1A'");
						foreach($data as $value)
						{
							$teamDesc = $value['TeamDesc_NL'];
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
			    <form method="post">
					<button class="button" type="submit" name="ready">Ready</button>
				</form>
			</div>
		</div>
	</div>

	
	<?php
		include 'element.html';
	?>
	
</div>

<?php
	if (isset($_POST['ready'])) {
		var_dump($socket->sendStartToBot("BumbleBert"));
	}
?>