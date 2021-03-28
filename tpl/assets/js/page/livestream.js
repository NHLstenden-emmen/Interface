
/* Set height chatbox automatically */

const chatBox = document.querySelector('#liveChat');
var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
chatBox.style.height = videoHeight + "px";

window.onresize = function(event) {
    var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
    chatBox.style.height = videoHeight + "px";
};

document.addEventListener('DOMContentLoaded', () => {
	const source = 'https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8';
	const video = document.querySelector('video');
	
	// For more options see: https://github.com/sampotts/plyr/#options
	// captions.update is required for captions to work with hls.js
	const player = new Plyr(video, {settings: []});
	
	if (!Hls.isSupported()) {
		video.src = source;
	} else {
		// For more Hls.js options, see https://github.com/dailymotion/hls.js
		const hls = new Hls();
		hls.loadSource(source);
		hls.attachMedia(video);
		window.hls = hls;
	}
	
	// Expose player so it can be used from the console
	window.player = player;
});