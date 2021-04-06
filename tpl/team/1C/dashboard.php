<?php

	if (isset($_POST['ready'])) {
		var_dump($socket->sendStartToBot("BumbleBert"));
	}

	if(isset($_POST['edit'])) 
	{
		if(!empty($_POST['robotName'])) {
			if(!empty($_POST['teamDescription'])) {
				$brokkoBot = $filter->sanatizeInput($_POST['brokkoBot'], "string");
				$teamDescNew = $filter->sanatizeInput($_POST['teamDescription'], "string");

				$DB->Update("UPDATE teams SET RobotName = ?, TeamDesc_NL = ? WHERE TeamId = '1C'", [$robotNameNew, $teamDescNew]);
			}
		}
	}

	$data = $DB->Select("SELECT * FROM teams WHERE teamID = '1C'")[0];
	$this->Set("robotnaam" , $data['RobotName']);
	$this->Set("TeamDesc" , $data['TeamDesc_NL']);

?>
<div class="container">
<div class="pageBar">
        <div class="neonBlock header">
            <h2 id="titel">Dashboard</h2>
            <p id="desc">INF1C</p>
        </div>
    </div>
	<div class="row">
		<div data-aos="fade-right" class="col-lg-6">
			<div class="container_3d">
				<div class="card neonBlock">
					<div class="brokko" style="pointer-events: none;">
						<div class="circle"></div>
						<img data-aos="fade-right" src="{assetsFolder}/images/team/1C/brokko.png" alt="{robotnaam}">
					</div>
					<div class="info">
						<h1 class="title">{robotnaam}</h1>
						<h3>SEND BROKKO TO THE MOON!</h3>
						<div class="ready">
							<form method="post">
								<button class="button" type="submit" name="ready"><i class="fas fa-rocket"></i> TO THE MOON!</button>
							</form>
						</div>
					</div>
				</div>
    	</div>	
		</div>
		<div data-aos="fade-down" class="col-lg-6">
			<div class="neonBlock content">
				<h3>Teamspagina</h3>
				<p>
					<form method="POST">
						<label>Robotnaam <br /><input type="text" id="brokkoBot" name="brokkoBot" value="{robotnaam}" required></label><br />
						<label>Teamdescriptie <br /><textarea id="teamDescription" rows="4" cols="50" name="teamDescription">{TeamDesc}</textarea></label><br />
						<button class="button" type="submit" name="edit">Submit</button>
					</form>
				</p>
			</div>
			<div class="neonBlock content">
				<div class="row text-center">

					<div class="col-xs-12 col-sm-6 col-md-4">
					<i class="fas fa-robot fa-2x madeby"></i>
						<h3>Robot</h3>
						<p>Coen Dokter</p>
						<p>Remco Hassing</p>
						<p>Roan Meijer</p>
						<p>Tim Aalders</p>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4">
					<i class="fas fa-server fa-2x madeby"></i>
						<h3>Server</h3>
						<p>Remco Hassing</p>
						<p>Talip Korkut</p>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4">
						<i class="fas fa-laptop fa-2x madeby"></i>
						<h3>Interface</h3>
						<p>Esmee Kajuiter</p>
						<p>Remco Hassing</p>
						<p>Michel Knotters</p>
					</div>
				</div>
			</div>
		</div>
	</div>


</div>
<script>
const card = document.querySelector(".card");
const container = document.querySelector(".container_3d");
const title = document.querySelector(".title");
const brokko = document.querySelector(".brokko img");

const ready = document.querySelector(".ready");
const description = document.querySelector(".info h3");

//Moving Animation Event
container.addEventListener("mousemove", (e) => {
  let xAxis = (window.innerWidth / 2 - e.pageX) /100;
  let yAxis = (window.innerHeight / 2 - e.pageY) /100;
  card.style.transform = `rotateY(${xAxis}deg) rotateX(${yAxis}deg)`;
});
//Animate In
container.addEventListener("mouseenter", (e) => {
  	card.style.transition = "none";
  	//Popout
	title.style.transform = "translateZ(100px)";
	brokko.style.transform = "translateZ(300px) translateY(-100%) rotateZ(-45deg)";

	description.style.transform = "translateZ(125px)";
	ready.style.transform = "translateZ(75px)";
});
//Animate Out
container.addEventListener("mouseleave", (e) => {
  card.style.transition = "all 0.5s ease";
  card.style.transform = `rotateY(0deg) rotateX(0deg)`;
  
  title.style.transform = "translateZ(0px)";
  brokko.style.transform = "translateZ(0px) rotateZ(0deg)";

  description.style.transform = "translateZ(0px)";
  ready.style.transform = "translateZ(0px)";
});
</script>