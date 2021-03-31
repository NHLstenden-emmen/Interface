<div class="container">

	<div class="row">
	
		<div class="col-md-12 col-lg-3 main">
		<h1 class="title">{HOME_TITLE}</h1>
		<p class="intro">{HOME_INTRO}</p>
		<a href="teams" class="button">{HOME_BUTTON}</a>
		</div>
		
		<div class="col-md-12 col-lg-9 main">
			<div>
				<h4>{START_COUNTDOWN}</h4>
				<ul class="countdown">
					<li class="countdownli" id="countdowndays">&nbsp;</li>
					<li class="countdownli" id="countdownhours">&nbsp;</li>
					<li class="countdownli" id="countdownminutes">&nbsp;</li>
					<li class="countdownli" id="countdownseconds">&nbsp;</li>
				</ul>
			</div>

			<img onmouseover="hover(this);" onmouseout="unhover(this);" id="ESP" class="img zoom" src="{assetsFolder}/images/arduino_0.png" alt="Arduino/ESP32 schematische weergave">
		</div>
	</div>
</div>


<script>

function hover(element) {
	element.setAttribute('src', '{assetsFolder}/images/arduino_1.png');
}

function unhover(element) {
  element.setAttribute('src', '{assetsFolder}/images/arduino_0.png');
}

</script>