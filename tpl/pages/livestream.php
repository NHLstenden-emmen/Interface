<div class="container livestream" data-aos="fade-down">
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
                <input style="height:100%" onkeydown="typeMessage(this)" type="text" id="liveChatInput"
                    class="input-field" placeholder="{bericht}" {disabled}>
            </div>
            <input type="radio" id="emojiCheckbox" {disabled}>
            <label for="emojiCheckbox" class="checker"></label>
            <div id="emojiPopUp"></div>
        </div>
        <div class="videoDetails">
            <div class="videoUpload">
                <span class="videoTitle" id="currentGame"></span>
                <span><i class="fas fa-robot"></i>&nbsp;<span id="currentRobot"></span></span>
                <span><i class="far fa-eye"></i>&nbsp;<span id="viewerCounter">0</span> {VIEWERS}</span>
            </div>
            <div class="videoCamera">
                <button class="button small" onclick="cameraChange('stream')"><i
                        class="fas fa-video"></i>&nbsp;&nbsp;1</button>
                <button class="button small" onclick="cameraChange('dome')"><i
                        class="fas fa-video"></i>&nbsp;&nbsp;2</button>
            </div>
        </div>
    </div>
</div>

<div class="infoModalBox hideInformation">
    <div class="closeInfo">
        <i class="fas fa-times"></i>
    </div>
    <div class="container gamesInfo">
        <div class="row">
            <div class="col-md-6 gameItem" id="game1">
                <div>
                    <h3><b>{RULES_MAZETITLE}</b></h3>
                    {RULES_MAZE}
                </div>
            </div>
            <div class="col-md-6 gameItem" id="game2">
                <div>
                    <h3><b>Race</b></h3>
                    {RULES_RACE}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 gameItem" id="game3">
                <div>
                    <h3><b>{RULES_RPSTITLE}</b></h3>
                    {RULES_RPS}
                </div>
            </div>
            <div class="col-md-6 gameItem" id="game4">
                <div>
                    <h3><b>{RULES_DRAWINGTITLE}</b></h3>
                    {RULES_DRAWING}
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Info button -->
<div class="infoBox">
    <i class="fas fa-info"></i>
</div>

<!-- Stats button -->
<div class="statsBox" onclick="location.href='bracket';">
    <i class="fas fa-trophy"></i>
</div>