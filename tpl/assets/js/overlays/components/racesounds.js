const soundsPath            = "/tpl/moderator/pages/lapcounter/assets/sounds/";
const imagePath             = "/tpl/moderator/pages/lapcounter/assets/images/";

/* Robot Data */
let botFinished             = false;

/* Circuits */
let currentCircuit;
let CoconutMall             = document.createElement('audio');
let luigiCircuit            = document.createElement("audio");
let toadsFactory            = document.createElement("audio");
let mushRoomGorge           = document.createElement("audio");
let DKSnowboardCross        = document.createElement("audio");

let currentCircuit_F;
let CoconutMall_F           = document.createElement('audio');
let luigiCircuit_F          = document.createElement("audio");
let toadsFactory_F          = document.createElement("audio");
let mushRoomGorge_F         = document.createElement("audio");
let DKSnowboardCross_F      = document.createElement("audio");

let circuitSounds           = [CoconutMall, luigiCircuit, toadsFactory, mushRoomGorge, DKSnowboardCross];
let circuitFinalSounds      = [CoconutMall_F, luigiCircuit_F, toadsFactory_F, mushRoomGorge_F, DKSnowboardCross_F];

/* Laps */
let regularLapAudio         = document.createElement('audio');
let finalLapAudio           = document.createElement('audio');

/* Ready/Start/Finish */
let readyAudio              = document.createElement("audio");
let startAudio              = document.createElement("audio");
let finishAudioSucces       = document.createElement("audio");
let finishAudioFail         = document.createElement("audio");

/* Startlight Images */
let startLights             = document.getElementById("startSequence");
let start_1                 = new Image();
let start_2                 = new Image();
let start_3                 = new Image();
let start_4                 = new Image();
let start_5                 = new Image();

let startImages = [start_2, start_3, start_4, start_5];

document.addEventListener('DOMContentLoaded', () => {

    /* Preload all resources */

    CoconutMall.src         = soundsPath + "circuit/coconut/regular.mp3";
    luigiCircuit.src        = soundsPath + "circuit/luigi/regular.mp3";
    toadsFactory.src        = soundsPath + "circuit/toad/regular.mp3";
    mushRoomGorge.src       = soundsPath + "circuit/mushroom/regular.mp3";
    DKSnowboardCross.src    = soundsPath + "circuit/DK/regular.mp3";

    CoconutMall_F.src       = soundsPath + "circuit/coconut/final.mp3";
    luigiCircuit_F.src      = soundsPath + "circuit/luigi/final.mp3";
    toadsFactory_F.src      = soundsPath + "circuit/toad/final.mp3";
    mushRoomGorge_F.src     = soundsPath + "circuit/mushroom/final.mp3";
    DKSnowboardCross_F.src  = soundsPath + "circuit/DK/final.mp3";


    readyAudio.src          = soundsPath + "ready/ready.mp3";
    regularLapAudio.src     = soundsPath + "lap/lap.mp3";
    finalLapAudio.src       = soundsPath + "lap/final_lap.mp3";
    startAudio.src          = soundsPath + "start/start.mp3";
    finishAudioSucces       = soundsPath + "ending/succes.mp3";
    finishAudioFail         = soundsPath + "ending/fail.mp3";

    start_1.src             = imagePath + "start/1.png";
    start_2.src             = imagePath + "start/2.png";
    start_3.src             = imagePath + "start/3.png";
    start_4.src             = imagePath + "start/4.png";
    start_5.src             = imagePath + "start/5.png";
});

startAudio.addEventListener('ended', () => {
    setTimeout(() => startLights.style.animation = `spiralOut 2.5s ease forwards`, 500);
});


const getRandomCircuit = () => {
    let randomCircuit   = Math.floor(Math.random() * circuitSounds.length);
    currentCircuit_F    = circuitFinalSounds[randomCircuit];
    currentCircuit      = new Audio(circuitSounds[randomCircuit].src);

    currentCircuit.play();

    currentCircuit.addEventListener("pause", () => {
        if(!botFinished && currentCircuit.currentTime > 100) {
            currentCircuit.currentTime = 0;
            currentCircuit.play();
        }
    });
}

const playReadySound    = ()   => readyAudio.play();
const playStartSound    = ()   => startAudio.play();
const playLapSound      = ()   => regularLapAudio.play();
const playFinalLapSound = ()   => finalLapAudio.play();

const changeLapVolume   = (v)  => currentCircuit.volume = v;
const playFinalCircuit  = ()   => currentCircuit_F.play();

const playFinishedSound = () => finishAudioSucces.play();
const disqualifiedSound = () => finishAudioFail.play();

const startSequence = async () => {
    startLights.style.display = "block";
    startLights.style.animation = `spiralIn 3.5s cubic-bezier(0, 0, 0.2, 1) forwards`;

    startLights.appendChild(start_1);
    startLights.style.position = "relative";

    await sleep(3500).then(() => {
        playStartSound();
        startLights.style.animation = `move 2s ease-in-out forwards infinite`;
    });

    for (const item of startImages) {
        await sleep(900);
        startLights.replaceChild(item, startLights.firstChild);
    }

    getRandomCircuit();
}

const lapSequence = () => {
    changeLapVolume(0.7);
    playLapSound();
    setTimeout(changeLapVolume(1), 2500);
}

const finalLapSequence = () => {
    currentCircuit.pause();
    playFinalLapSound();
    setTimeout(playFinalCircuit, 2800);
}

const stopCircuitSounds = () => {
    currentCircuit_F.pause();
    currentCircuit.pause();
}

const lapCounterControl = (type) => {
    switch (type) {
        case "ready":
            botFinished = false;
            playReadySound();
        break;
        case "start":
            startSequence();
        break;
        case "lap":
            lapSequence();
        break;
        case "final_lap":
            finalLapSequence();
        break;
        case "finished":
            botFinished = true;
            changeLapVolume(0.5);
            playFinishedSound();
            setTimeout(stopCircuitSounds, 2500);
        break;
        case "disqualified":
            botFinished = true;
            changeLapVolume(0.5);
            disqualifiedSound();
            setTimeout(stopCircuitSounds, 2500);
        break;
    }
}


setTimeout(() => lapCounterControl("start"), 1000);