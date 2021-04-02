confetti.maxCount = 200;     //set max confetti count
confetti.speed = 3;          //set the particle animation speed
confetti.frameInterval = 20; //the confetti animation frame interval in milliseconds
confetti.alpha = 1.0;        //the alpha opacity of the confetti (between 0 and 1, where 1 is opaque and 0 is invisible)
confetti.gradient = false;   //whether to use gradients for the confetti particles

var runOnce = false;

const playAudio = (url) => {
    new Audio(url).play();
}

const sleep = (ms) => {
    return new Promise((resolve) => setTimeout(resolve, ms));
}

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
    switch("ROBot Jetten")
    {
        case "confetti":
            confetti.start();
            document.querySelector("#word1").innerHTML = "winnaar";
            document.querySelector("#word2").innerHTML = "bot";
            
            anime({
                targets: '.ml15 .word',
                scale: [14,1],
                opacity: [0,1],
                easing: "easeOutCirc",
                duration: 1500,
                delay: (el, i) => 800 * i
            }).restart();

        break;
        case "stop":

            confetti.stop();
            anime({
                targets: '.ml15 .word',
                opacity: [1,0],
                easing: "easeOutExpo",
                duration: 1500
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
                  }).restart();
  
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
        case "Lennart":
            playAudio("/tpl/assets/sound/INF1E.mp3");
        break;
    }
}

const launchOverlayStream = () =>
{
    if ("WebSocket" in window)
    {
        var overlaysWebsocket = new WebSocket("ws:/77.162.30.112:49151");

        overlaysWebsocket.addEventListener('message', (message) => {
        if(isJson(message.data)) { 
            switchControl(JSON.parse(message.data));
            console.log(messageData);
        }});

        overlaysWebsocket.addEventListener("close", (e) => {
            console.log('Socket is closed. Reconnect will be attempted in 1 second.', e.reason);
            setTimeout(() => launchOverlayStream(), 1000);
        });   
    }
    else
    {
        alert("WebSocket is NOT supported by your Browser!");
    }

    document.getElementById("navbar").style.display = "none";
    document.getElementById("background").style.display = "none";

}

launchOverlayStream();
switchControl();