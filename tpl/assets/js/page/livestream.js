
/* Set height chatbox automatically */
//"https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"
const chatBox = document.querySelector('#liveChat');
const video = document.querySelector('video');
const videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
const source = 'https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8';

chatBox.style.height = videoHeight + "px";

var hls;

const cameraChange = (camera) => {
	hls.loadSource("/streams/" + camera);
	hls.attachMedia(video);
}

window.onresize = function(event) {
    var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
    chatBox.style.height = videoHeight + "px";
};

document.addEventListener('DOMContentLoaded', () => {
	hls = new Hls();

	const playerOptions = {
		fullscreen: {
		  enabled: true,
		  iosNative: true
		},
		controls: [
			"play-large",
			"play",
			"progress",
			"duration",
			"mute",
			"volume",
			'pip', 
			'airplay', 
			"fullscreen"
		],
		muted: true,
		autoplay: true,
		storage: { enabled: false }
	  };

	new Plyr(video, playerOptions);
	
	if (!Hls.isSupported()) {
		video.src = source;
	} else {
		hls.loadSource("https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8");
		hls.attachMedia(video);
	} 	
});