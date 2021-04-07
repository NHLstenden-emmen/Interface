const minTimeBetweenTicks = 1500; // ms
const soundsPath = "/tpl/moderator/pages/lapcounter/assets/sounds/";
let websocket;

var video 			 = document.createElement('video');
var canvas 			 = document.createElement('canvas');
var fullSoundsAudio	 = document.createElement('audio');
var lapSoundsAudio	 = document.createElement('audio');

const statusMessage  = document.getElementById("statusmessage");
const statusImage    = document.getElementById("statusimage");

var connectionrejected = false;
var lastTick = new Date();

function initSuccess() {
	DiffCamEngine.start();
}

function initError() {
	statusMessage.innerHTML = "Something went wrong!";
}

function capture(payload) {
    if(payload.hasMotion && new Date() - lastTick > minTimeBetweenTicks) {
		
        lastTick = new Date();

		statusImage.style.setProperty('filter', "hue-rotate(226deg)"); 
        sendPing(); 
		setTimeout(() => {statusImage.style.setProperty('filter', "hue-rotate(0deg)")}, minTimeBetweenTicks); 
    }
}

DiffCamEngine.init({
	video: video,
	motionCanvas: canvas,
	initSuccessCallback: initSuccess,
	initErrorCallback: initError,
	captureCallback: capture
});

DiffCamEngine.setScoreThreshold(700);

const websocketConnect = (() => { 
	websocket = new WebSocket("ws://194.171.181.139:49151");

	websocket.addEventListener('open', () => {
		websocket.send(JSON.stringify({"type": "lapcounter", "action": "connected"}));
	});
	
	websocket.addEventListener("close", (e) => {
		if(!connectionrejected) {
			statusMessage.innerHTML = "Connection lost, reconnecting...";
			setTimeout(websocketConnect, 1000);
		}
	});

	websocket.addEventListener('message', (e) => {
		var serverMessage = JSON.parse(e.data);

		if(serverMessage.server == "rejected") {
			connectionrejected = true;
			statusMessage.innerHTML ="Rejected by the BattleBots Server, a lap counter is already connected!";
		}
 		else if(serverMessage.server == "accepted") {
			statusMessage.innerHTML = "Accepted by the BattleBots Server!";
		} else {
			lapSounds(serverMessage);
		}
	});
});

const lapSounds = (message) => {
		switch(message.sound)
		{
			case "last_lap":
				console.log("last lap");
				fullSoundsAudio.pause();
				setTimeout(() => {
					fullSoundsAudio.src = soundsPath + "final_lap.mp3";
					fullSoundsAudio.play();
				}, 2800); 
				lapSoundsAudio.src = soundsPath + "final_lap_sound.mp3";
				lapSoundsAudio.play();
			break;
			case "lap":
				console.log("lap"); 
				fullSoundsAudio.volume = "0.5";
				lapSoundsAudio.src = soundsPath + "lap.mp3";
				lapSoundsAudio.play();
				setTimeout(() => {
					fullSoundsAudio.volume = "1";
				}, 2500);
			break;
			case "race_ready":
				fullSoundsAudio.src = soundsPath + "ready.mp3";
				fullSoundsAudio.play();
			break;
			case "race_start":
				console.log("start race");
				fullSoundsAudio.src = soundsPath + "start_race.mp3";
				fullSoundsAudio.play();
			break;
			case "finished":
				fullSoundsAudio.volume = "0.3";
				lapSoundsAudio.src = soundsPath + "finished.mp3";
				lapSoundsAudio.play();
				setTimeout(() => {
					fullSoundsAudio.pause();
				}, 1000);
			break;
			case "disqualified":
				fullSoundsAudio.volume = "0.3";
				lapSoundsAudio.src = soundsPath +  "disqualified.mp3";
				lapSoundsAudio.play();
				setTimeout(() => {
					fullSoundsAudio.pause();
				}, 1000);
			break;
		}
}

document.addEventListener("DOMContentLoaded",websocketConnect);

const sendPing = () =>
{
	if(!connectionrejected) 
	{
		websocket.send(JSON.stringify({"type": "lapcounter", "action": "lap"}));
	}
}
