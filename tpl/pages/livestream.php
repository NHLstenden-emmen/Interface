<style>
    
.videoBlock {
    grid-row: 1;
    display: grid;
    grid-template-columns: 70% 1fr;
    grid-template-rows: fit-content(40%) fit-content(40%);
}

.videoBlock > video {
    outline: none;
    grid-row: 1;
    grid-column: 1;
    background-color: #000000;
    width: 100%;
    height: auto;
}

.videoBlock > .videoComments {
    grid-column: 2;
    grid-row: 1/6;
    background-color: rgba(7, 7, 7, 0.65);
    box-shadow: -0.5vw 0.3vw 18px 0.03vw rgba(0, 0, 0, 0.33);
    display: grid;
    grid-template-columns: 20px 1fr;
    grid-template-rows: 1fr 70px;
}

.videoBlock > .videoComments > #liveChat {
    grid-row: 1;
    grid-column: 2;
	overflow-y: scroll;
}
.videoBlock > .videoComments > #sendMessage {
    grid-row: 2;
    grid-column: 1/3;
}
.videoDetails {
    grid-row: 3/6;
    grid-column: 1/2;
	background-color: rgba(7, 7, 7, 0.65);
    box-shadow: -0.5vw 0.3vw 18px 0.03vw rgba(0, 0, 0, 0.33);
    display: grid;
    grid-template-columns: 14px auto 1fr auto 20px;
    grid-template-rows: auto fit-content(40%);
    height: 70px;
}

.videoUpload {
    display: flex;
    flex-direction: column;
    grid-row: 1/4;
    grid-column: 2;
    justify-content: center;
}

.videoUpload > span {
    padding-right: 1vw;
	color: var(--placeholder);
    margin-top: -0.5vh;

}

.videoTitle {
    color: #5B5753;
    font-size: clamp(28px, 1.2vw, 42px);
}

.videoComments > span {
    font-family: 'Bebas Neue', cursive;
    letter-spacing: 0.1vw;
	color: var(--placeholder);
    text-transform: uppercase;
    height: min-content;
    width: max-content;
    font-size: calc(12px + 6 * ((100vw - 320px) / 680));
    text-indent: 0.5vw;
    grid-row: 1;
    grid-column: 1;
    align-self: center;
}

.videoComments > ul > li {
    width: 100%;
    margin-bottom: 1vh;
}

.videoComments > ul::-webkit-scrollbar {
    display: none;
}


.videoCommentsText {
    font-family: 'Roboto', sans-serif;
    display: block;
}


p.message {
	margin-bottom: 0.5rem;
	display: flex;
	align-items: center;
	text-align: right;
	justify-content: flex-start;
	font-size: 0.9em;
	text-align: left;
	/* flex-wrap: wrap; */
	width: 100%;
	color: var(--placeholder);
	font-style: italic;
}

.plyr--video {
    overflow: unset !important;
}

@media (max-width: 950px) {
    .videoBlock {
        grid-template-columns: 1fr;
        grid-template-rows: fit-content(10%) fit-content(10%) fit-content(10%);
    }

    .videoBlock > video {
        grid-row: 2;
    }

    .videoBlock > .videoComments {
        grid-row: 4/6;
        grid-column: 1;
    }

    .videoDetails {
        grid-row: 3;
        grid-column: 1;
        box-shadow: unset;
        grid-template-columns: 20px 1fr 20px;
        display: grid;
        grid-template-rows: auto;
    }

    .videoUpload {
        padding-top: 1vw;
        grid-row: 2;
        grid-column: 2;
    }

    .videoComments > span {
        margin-left: -0.5vw;
    }

}
/* END VIDEOBLOCK */
</style>
<!-- <div class="container" data-aos="zoom-in-down">
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
</div> -->

<div class="container"  data-aos="zoom-in-down">
<h1 class="title">Livestream</h1>
    <div class="videoBlock">
        <video id="livestreamVideo" data-plyr-config='{"autoplay": true}'>
            Je browser ondersteunt geen HTML5 video's.
        </video>
        <div class="videoComments">
            <div id="liveChat">
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>
                <p class="message">test</p>

            </div>
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