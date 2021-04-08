
/* Set height chatbox automatically */
//"https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"
const chatBox = document.querySelector('#liveChat');
const video = document.querySelector('video');
const videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
const source = 'https://test-streams.mux.dev/x36xhzz/url_6/193039199_mp4_h264_aac_hq_7.m3u8';

var hls, videoplayer;
var emojiButton = document.querySelector('#emojiCheckbox');
var emojiContainer = document.querySelector('#emojiPopUp');
var inputBar = document.querySelector('#liveChatInput');
var ignoreList = [emojiButton, emojiContainer];
var emojiList = [];
let emojiValueList = [];

chatBox.style.height = (videoHeight - 10) + "px";

const playerOptions = {
	fullscreen: {
	  iosNative: true
	},
	controls: [
		"play-large",
		"play",
		"mute",
		"volume",
		'pip', 
		'airplay', 
		"fullscreen"
	],
	muted: true,
};


const cameraChange = (camera) => {
	if (!Hls.isSupported()) {
		video.src = "/streams/" + camera + ".m3u8";
	} else {
		hls.loadSource("/streams/" + camera + ".m3u8");
		hls.attachMedia(video);
		videoplayer.play();
	}
}

document.addEventListener('DOMContentLoaded', () => {
	resizeEmojiPopUp();
	hls = new Hls();
	videoplayer = new Plyr(video, playerOptions);
	var playElement = document.querySelector("[data-plyr='play']");
	var liveElement = document.createElement("div");
	liveElement.innerHTML = "LIVE";
	liveElement.className = "plyr__controls__item live";
	playElement.parentNode.insertBefore(liveElement, playElement.nextSibling);

	if (!Hls.isSupported()) {
		video.src = "/streams/stream.m3u8";
	} else {
		hls.loadSource("/streams/stream.m3u8");
		hls.attachMedia(video);
	} 	
});

document.addEventListener("click", (e) => {
    if(!ignoreList.includes(e.target) && !(emojiList.includes(e.target) && e.shiftKey) && !(e.target.classList.contains("fa-arrow-right") || e.target.classList.contains("fa-arrow-down"))) {
        emojiButton.checked = false;
    }
});

window.addEventListener('resize', () => {
    var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
	chatBox.style.height = (videoHeight - 10) + "px";
	resizeEmojiPopUp();
});

function resizeEmojiPopUp() {
    var newHeight = "calc(" + document.querySelector('#liveChat').style.height +")";
    emojiContainer.style.setProperty('height', newHeight);
}

$.getJSON('https://raw.githubusercontent.com/amurani/unicode-emoji-list/master/full-emoji-list.json', (data) => {
    setupEmojis(data);
});

function setupEmojis(emojis) {
    Object.keys(emojis).forEach((key) => {
        var cato = document.createElement('div');
        cato.classList.add('emojiCato', 'open');
        ignoreList.push(cato); // die arrows worden dan nie in de ignorelist gezet ow moet ik ze een id geve ofz?

        var catoHeader = document.createElement('div');
        catoHeader.innerHTML = key + ' ' + '<i class="fas fa-arrow-down"></i>'; 
        catoHeader.classList.add('catoHeader');
        cato.appendChild(catoHeader);
        ignoreList.push(catoHeader);

        catoHeader.addEventListener('click', () => {
            if(cato.classList.contains('open')) {
                cato.classList.remove('open');
                catoHeader.innerHTML = key + ' ' + '<i class="fas fa-arrow-right"></i>';
            } else {
                cato.classList.add('open');
                catoHeader.innerHTML = key + ' ' + '<i class="fas fa-arrow-down"></i>';
            }
        });

        var catoContent = document.createElement('div');
        catoContent.classList.add('catoContent');
        cato.appendChild(catoContent);
        ignoreList.push(catoContent);

        emojis[key].forEach((value) => {
            var emoji = document.createElement('div');
            emoji.classList.add("emoji");
            emoji.innerHTML = value.emoji;
            emojiList.push(emoji);
			emojiValueList.push(value.emoji);
            emoji.addEventListener("click", () => {
                inputBar.value += value.emoji;
				inputBar.focus()
				if (typeof inputBar.selectionStart == "number") {
					inputBar.selectionStart = inputBar.selectionEnd = inputBar.value.length;
				} else if (typeof inputBar.createTextRange != "undefined") {           
					var range = inputBar.createTextRange();
					range.collapse(false);
					range.select();
				}
            });

            catoContent.appendChild(emoji);
        });
        emojiContainer.appendChild(cato);
    });
}

/* Toggle information */
$(document).ready(function () {
	$(".infoBox").click(function(){
		$(".infoModalBox").toggleClass("showInformation");
		$(".infoModalBox").toggleClass("hideInformation");			
		var newHeightInfo = $(".gamesInfo").height();	
		$(".showInformation").height(newHeightInfo+200);
  	});
	$(".closeInfo").click(function(){		
		$(".infoModalBox").toggleClass("hideInformation");
		$(".infoModalBox").toggleClass("showInformation");
  	});
	$(window).on('resize', function(){
		var newHeightInfo = $(".gamesInfo").height();
		$(".showInformation").height(newHeightInfo+200);
	});
});

