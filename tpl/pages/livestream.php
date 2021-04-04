<div class="container"  data-aos="zoom-in-down">
    <h1 class="title">Livestream</h1>
    <div class="videoBlock">
        <video id="livestreamVideo" data-plyr-config='{"autoplay": true}'>
            Je browser ondersteunt geen HTML5 video's.
        </video>
        <div class="videoComments">
            <div id="liveChat"></div>
            <div id="sendMessage">
					<div onclick="sendMessage()" class="input-icons">
						<i class="send fas fa-chevron-right"></i>
					</div>
					<input style="height:100%" onkeydown="typeMessage(this)" type="text" id="liveChatInput" class="input-field" placeholder="{bericht}" {disabled} />
				</div>
        </div>
        <div class="videoDetails">
            <div class="videoUpload">
                <span class="videoTitle">Race</span>
                <span><i class="far fa-eye"></i>&nbsp;<span id="viewerCounter">0</span></span>
            </div>
        </div>
    </div>
</div>