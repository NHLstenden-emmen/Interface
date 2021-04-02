<div class="container livestream" data-aos="zoom-in-down">
    <div id="livestream">
        <h1 class="title">Livestream</h1>
        <br>
        <div class="contentLivestream row">
            <div class="col-md-8">
                <video id="livestreamVideo" data-plyr-config='{"autoplay": true}'>
                    Je browser ondersteunt geen HTML5 video's.
                </video>
                <button class="button" onclick="cameraChange('dome')">Camera 1</button>
				<button class="button" onclick="cameraChange('2')">Camera 2</button>
            </div>
            <div class="col-md-4 chatStyle">
                <div id="liveChat"></div>
            </div>
        </div>
		<div class="row">
			<div class="col-md-4 noPadding"></div>
			<div class="col-md-4"></div>
			<div class="col-md-4 noPadding">
				<div id="sendMessage">
					<div onclick="sendMessage()" class="input-icons">
						<i class="send fas fa-chevron-right"></i>
					</div>
					<input onkeydown="typeMessage(this)" type="text" id="liveChatInput" class="input-field" placeholder="{bericht}" {disabled} />
				</div>
			</div>
		</div>
    </div>
</div>