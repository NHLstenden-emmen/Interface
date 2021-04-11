const minTimeBetweenTicks = 1500; // ms
let websocket;

const video = document.createElement('video');
const canvas = document.createElement('canvas');

const statusMessage  = document.getElementById("statusmessage");
const statusImage    = document.getElementById("statusimage");

let connectionRejected = false;
let lastTick = new Date();

document.addEventListener("DOMContentLoaded",websocketConnect);

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
		if(!connectionRejected) {
			statusMessage.innerHTML = "Connection lost, reconnecting...";
			setTimeout(websocketConnect, 1000);
		}
	});

	websocket.addEventListener('message', (e) => {
		let serverMessage = JSON.parse(e.data);

		if(serverMessage.server === "rejected") {
			connectionRejected = true;
			statusMessage.innerHTML = "Rejected by the BattleBots Server, a lap counter is already connected!";
		}
 		else if(serverMessage.server === "accepted") {
			statusMessage.innerHTML = "Accepted by the BattleBots Server!";
		} else {
			lapCounterControl(serverMessage);
		}
	});
});

const sendPing = () => {
	if(!connectionRejected) {
		websocket.send(JSON.stringify({"type": "lapcounter", "action": "lap"}));
	}
}
