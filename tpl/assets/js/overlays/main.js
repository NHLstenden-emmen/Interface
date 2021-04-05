confetti.maxCount = 200; //set max confetti count
confetti.speed = 3; //set the particle animation speed
confetti.frameInterval = 20; //the confetti animation frame interval in milliseconds
confetti.alpha = 1.0; //the alpha opacity of the confetti (between 0 and 1, where 1 is opaque and 0 is invisible)
confetti.gradient = false; //whether to use gradients for the confetti particles

var countDownDate = new Date(countDownDateText).getTime();
var countdownended = false;
var now = new Date().getTime();
var currentIndex = 0;

var songs = [
	"/tpl/assets/sound/countdown/2.mp3",
	"/tpl/assets/sound/countdown/1.mp3",
];

var waitingMusic = document.createElement("audio");

const waitingMusicPlay = () => {
	waitingMusic.src = songs[currentIndex];
	waitingMusic.play();
};

const waitingMusicPrev = () => {
	if (currentIndex < 0) {
		currentIndex = 0;
		waitingMusic.src = songs[currentIndex];
	} else {
		waitingMusic.src = songs[currentIndex];
	}
	waitingMusic.play();
};

const waitingMusicNext = () => {
	if (currentIndex > songs.length) {
		currentIndex = 0;
		waitingMusic.src = songs[0];
		waitingMusic.pause();
	} else {
		waitingMusic.src = songs[currentIndex];
		waitingMusic.play();
	}
};

waitingMusic.addEventListener("pause", () => {
	currentIndex++;
	if (!countdownended) {
		waitingMusicPlay();
	}
});

document.addEventListener("DOMContentLoaded", () => {
	launchOverlayStream();

	if (countDownDate - now > 0) {
		waitingMusicPlay();
		setTimeout(() => {
			new FlipDown(new Date(countDownDateText).getTime() / 1000)
				.start()
				.ifEnded(() => {
					countdownended = true;
					waitingMusic.pause();
					document
						.querySelector("body")
						.classList.remove("countdown");
					document.getElementById("flipdown").style.display = "none";
				});
		}, 5000);

		document.querySelector("body").classList.add("countdown");
	} else {
		countdownended = true;
	}

	document.getElementById("navbar").style.display = "none";
	document.getElementById("background").style.display = "none";
	document.getElementById("placeToast").style.display = "none";
	document.querySelector("footer").style.display = "none";
});

const playAudio = (url) => {
	new Audio(url).play();
};

const stopAuido = () => {
	var stopAuido = document.createElement("audio");
	stopAuido.pause();
	stopAuido.src =
		"data:audio/wav;base64,UklGRiQAAABXQVZFZm10IBAAAAABAAEAVFYAAFRWAAABAAgAZGF0YQAAAAA=";
};

const sleep = (ms) => {
	return new Promise((resolve) => setTimeout(resolve, ms));
};

function fade(element) {
	var op = 1; // initial opacity
	var timer = setInterval(function () {
		if (op <= 0.0) {
			clearInterval(timer);
			element.style.display = "none";
			console.log("Err");
		}
		element.style.opacity = op;
		element.style.filter = "alpha(opacity=" + op * 100 + ")";
		op -= op * 0.1;

		if (op < 0.05) {
			clearInterval(timer);
			element.style.opacity = "0";
		}
	}, 20);
}

function unfade(element) {
	var op = 0.1; // initial opacity
	var timer = setInterval(function () {
		if (op >= 1) {
			clearInterval(timer);
		}
		element.style.opacity = op;
		element.style.filter = "alpha(opacity=" + op * 100 + ")";
		op += op * 0.1;
	}, 10);
}

function showStoplicht() {
	document.getElementById("textStoplicht").style.opacity = "1";
	unfade(stoplicht);
	sleep(500).then(() => {
		playAudio("/tpl/assets/sound/stoplicht.mp3");
	});
}

function hideStoplicht() {
	fade(stoplicht);
}

const switchControl = (messageData) => {
	if (countdownended) {
		switch (messageData.scene) {
			case "confetti":
				confetti.start();
				document.querySelector("#word1").innerHTML = "winnaar";
				document.querySelector("#word2").innerHTML = "bot";

				anime({
					targets: ".ml15 .word",
					scale: [14, 1],
					opacity: [0, 1],
					easing: "easeOutCirc",
					duration: 1500,
					begin: function () {
						document
							.querySelectorAll(".ml15 .word")
							.forEach(
								(element) => (element.style.display = "block")
							);
					},
					delay: (el, i) => 800 * i,
				}).restart();

				break;
			case "stop":
				confetti.stop();
				anime({
					targets: ".ml15 .word",
					opacity: [1, 0],
					easing: "easeOutExpo",
					duration: 1500,
				}).restart();

				break;
			case "stoplicht":
				showStoplicht();
				sleep(700).then(() => {
					var ml4 = {};
					ml4.opacityIn = [0, 1];
					ml4.scaleIn = [0.2, 1];
					ml4.scaleOut = 3;
					ml4.durationIn = 1100;
					ml4.durationOut = 850;
					ml4.delay = 000;

					anime
						.timeline({
							loop: false,
						})
						.add({
							targets: ".ml4 .letters-1",
							opacity: ml4.opacityIn,
							scale: ml4.scaleIn,
							duration: ml4.durationIn,
						})
						.add({
							targets: ".ml4 .letters-1",
							duration: ml4.durationOut,
							easing: "easeInExpo",
							delay: ml4.delay,
						})
						.add({
							targets: ".ml4 .letters-2",
							opacity: ml4.opacityIn,
							scale: ml4.scaleIn,
							duration: ml4.durationIn,
						})
						.add({
							targets: ".ml4 .letters-2",
							duration: ml4.durationOut,
							easing: "easeInExpo",
							delay: ml4.delay,
						})
						.add({
							targets: ".ml4 .letters-3",
							opacity: ml4.opacityIn,
							scale: ml4.scaleIn,
							duration: ml4.durationIn,
						})
						.add({
							targets: ".ml4 .letters-3",
							duration: ml4.durationOut,
							easing: "easeInExpo",
							delay: ml4.delay,
						})
						.add({
							targets: ".ml4 .letters-4",
							opacity: ml4.opacityIn,
							scale: ml4.scaleIn,
							duration: ml4.durationOut,
						})
						.add({
							targets: ".ml4 .letters-4",
							duration: ml4.durationOut,
							easing: "easeInExpo",
							delay: 450,
						})
						.add({
							targets: ".ml4",
							opacity: [1, 0],
							duration: 500,
							delay: 0,
						})
						.restart();

					anime({
						targets: ".container .circle .light",
						opacity: [0, 1],
						easing: "easeOutCirc",
						duration: 1000,
						delay: (el, i) => 1100 * i,
					}).restart();
				});
				sleep(4800).then(() => {
					hideStoplicht();
				});
				break;
			case "BrokkoBot":
				//playAudio('1E/quoteJetten.mp3');
				break;
			case "BumbleBert":
				//playAudio('1E/quoteJetten.mp3');
				break;
			case "Wall-D":
				//playAudio('1E/quoteJetten.mp3');
				break;
			case "ROBot Jetten":
				readyBot1E();
				playAudio("/tpl/assets/sound/INF1E.mp3");
				break;
			case "Dimitri":
				readyBot1B();
				// playAudio("/tpl/assets/sound/Lenards_Team_Song.mpeg");
				break;
		}
	} else if (!countdownended) {
		switch (messageData.audio) {
			case "prev":
				currentIndex--;
				waitingMusicPrev();
				break;
			case "next":
				currentIndex++;
				waitingMusicNext();
				break;
			case "custom":
				songs.push(messageData.custom);
				console.log(songs);
				break;
		}
	}
};

const launchOverlayStream = () => {
	if ("WebSocket" in window) {
		var overlaysWebsocket = new WebSocket("ws:/194.171.181.139:49151");

		overlaysWebsocket.addEventListener("open", () => {
			document.querySelector("#word1").innerHTML = "connected to ";
			document.querySelector("#word2").innerHTML = "battlebots server";

			anime
				.timeline({ loop: false })
				.add({
					targets: ".ml15 .word",
					scale: [14, 1],
					opacity: [0, 1],
					easing: "easeOutCirc",
					duration: 1500,
					begin: () => {
						document
							.querySelectorAll(".ml15 .word")
							.forEach(
								(element) => (element.style.display = "block")
							);
					},
					delay: (el, i) => 800 * i,
				})
				.restart();

			setTimeout(() => {
				document
					.querySelectorAll(".ml15 .word")
					.forEach((element) => (element.style.display = "none"));
			}, 3000);
		});

		overlaysWebsocket.addEventListener("message", (message) => {
			switchControl(JSON.parse(message.data));
			console.log(JSON.parse(message.data));
		});

		overlaysWebsocket.addEventListener("close", (e) => {
			console.log(
				"Socket is closed. Reconnect will be attempted in 1 second.",
				e.reason
			);
			setTimeout(() => launchOverlayStream(), 1000);
		});
	} else {
		alert("WebSocket is NOT supported by your Browser!");
	}
};
