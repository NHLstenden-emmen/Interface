<div class="container">
    <div id="livestream">
        <h1 class="title">Livestream</h1>
        <br>
        <div class="contentLivestream row">
            <div class="col-md-8">
                <video id="livestreamVideo">
                    Je browser ondersteunt geen HTML5 video's.
                </video>
            </div>
            <div class="col-md-4 chatStyle">
                <div id="liveChat"></div>
            </div>
        </div>
        <button onclick="camera1();">Camera 1</button>
        <button onclick="camera2();">Camera 2</button>
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