
/* Set height chatbox automatically */
//"https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"
const chatBox = document.querySelector('#liveChat');
const video = document.querySelector('video');
const videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
const source = 'https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8';
	
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
	autoplay: true
};
chatBox.style.height = videoHeight + "px";

var hls;
var videoplayer;
const cameraChange = (camera) => {
	if (!Hls.isSupported()) {
		video.src = "/streams" + camera;
	} else {
		hls.loadSource("/streams" + camera);
		hls.attachMedia(video);
	}

	videoplayer.play();
}

window.onresize = function(event) {
    var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
    chatBox.style.height = videoHeight + "px";
};

document.addEventListener('DOMContentLoaded', () => {
	hls = new Hls();

	videoplayer = new Plyr(video, playerOptions);
		
	if (!Hls.isSupported()) {
		video.src = "/streams/dome.m3u8";
	} else {
		hls.loadSource("/streams/dome.m3u8");
		hls.attachMedia(video);
	} 	
});


