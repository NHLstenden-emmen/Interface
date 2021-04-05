<div class="container livestream"  data-aos="fade-down">
    <h1 class="title">Livestream</h1>
    <div class="videoBlock">
        <video id="livestreamVideo" poster="{assetsFolder}/images/poster.png">
            Je browser ondersteunt geen HTML5 video's.
        </video>
        <div class="videoComments">
            <div id="liveChat"></div>
                <div id="sendMessage">
                    <div onclick="sendMessage()" class="input-icons">
                    <i class="send fas fa-chevron-right"></i>
                    </div>
                    <input style="height:100%" onkeydown="typeMessage(this)" type="text" id="liveChatInput" class="input-field" placeholder="{bericht}" {disabled}>
                </div>
                <input type="radio" id="emojiCheckbox" {disabled}>
                <label for="emojiCheckbox" class="checker"></label>
                <div id="emojiPopUp"></div>
            </div>
            <div class="videoDetails">
                <div class="videoUpload">
                    <span class="videoTitle">Race</span>
                    <span><i class="far fa-eye"></i>&nbsp;<span id="viewerCounter">0</span></span>
                </div>
                <div class="videoCamera"> 
                    <button class="button small" onclick="cameraChange('dome')"><i class="fas fa-video"></i>&nbsp;&nbsp;1</button>
                    <button class="button small" onclick="cameraChange('stream')"><i class="fas fa-video"></i>&nbsp;&nbsp;2</button>
                </div>
        </div>
    </div>
</div>