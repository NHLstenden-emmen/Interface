<div class="container">
    <div id="livestream">
        <h1 class="title">Livestream</h1>
        <br>
        <div class="contentLivestream row">
            <div class="col-md-8">
                <video id="livestreamVideo" controls>
                    <source src="mov_bbb.mp4" type="video/mp4">
                    Je browser ondersteunt geen HTML5 video's.
                </video>
            </div>
            <div class="col-md-4 chatStyle">
                <div id="liveChat"></div>
                <!-- 
                    <i class="far fa-trash-alt"></i>    
                -->
            </div>
        </div>
		<div class="row">
			<div class="col-md-4 noPadding">
				
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-4 noPadding">
				<div id="sendMessage">
					<div onclick="sendMessage()" class="input-icons">
						<i class="send fas fa-chevron-right"></i>
					</div>
					<input onkeydown="typeMessage(this)" type="text" id="liveChatInput" class="input-field" placeholder="Bericht" /> 
				</div>
			</div>
		</div>
    </div>
</div>