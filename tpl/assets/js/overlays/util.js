confetti.maxCount = 200;     //set max confetti count
confetti.speed = 3;          //set the particle animation speed
confetti.frameInterval = 20; //the confetti animation frame interval in milliseconds
confetti.alpha = 1.0;        //the alpha opacity of the confetti (between 0 and 1, where 1 is opaque and 0 is invisible)
confetti.gradient = false;   //whether to use gradients for the confetti particles

const countDownDate = new Date(countDownDateText).getTime();
const countdownended = false;

const now = new Date().getTime();

const hidePage = () => {
  document.getElementById("navbar").style.display = "none";
  document.getElementById("background").style.display = "none";
  document.getElementById("placeToast").style.display = "none";
  document.querySelector("footer").style.display = "none"; 
}

const initClock = () => {
    new FlipDown(new Date(countDownDateText).getTime() / 1000)
    .start()
    .ifEnded(() => {
      countdownended = true;
      waitingMusic.pause();
      document.querySelector("body").classList.remove("countdown");
      document.getElementById("flipdown").style.display = "none";
    });
}

const connectedMessage = () => {
  document.querySelector("#word1").innerHTML = "connected to ";
  document.querySelector("#word2").innerHTML = "battlebots server";

  anime.timeline({loop: false,}).add({
    targets: '.ml15 .word',
    scale: [14,1],
    opacity: [0,1],
    easing: "easeOutCirc",
    duration: 1500,
    begin: () => {
      document.querySelectorAll('.ml15 .word').forEach(element => element.style.display = "block");
    },
    delay: (el, i) => 800 * i
  }).restart();

  setTimeout(() => {
    document.querySelectorAll('.ml15 .word').forEach(element => element.style.display = "none");
  }, 3000);
}



const fade = (element) => {
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

const unfade = (element) => {
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

const hideStoplicht = () => {
  fade(stoplicht);
}

const showStoplicht = () => {
  document.getElementById("textStoplicht").style.opacity = "1";
  unfade(stoplicht);
  sleep(500).then(() => {
    playAudio("/tpl/assets/sound/stoplicht.mp3");
  });

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
}

const showConfetti = (bot) => {
  confetti.start();
  document.querySelector("#word1").innerHTML = "winnaar";
  document.querySelector("#word2").innerHTML = "bot";
  
  anime({
      targets: '.ml15 .word',
      scale: [14,1],
      opacity: [0,1],
      easing: "easeOutCirc",
      duration: 1500,
      begin: function() {
        document.querySelectorAll('.ml15 .word').forEach(element => element.style.display = "block");
      },
      delay: (el, i) => 800 * i
  }).restart();
}

const stopConfetti = () => {
  confetti.stop();
  anime({
      targets: '.ml15 .word',
      opacity: [1,0],
      easing: "easeOutExpo",
      duration: 1500
  }).restart();
}

const playAudio = (url) => {
  new Audio(url).play();
}

const sleep = (ms) => {
    return new Promise((resolve) => setTimeout(resolve, ms));
}