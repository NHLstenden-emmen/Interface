confetti.maxCount = 200;     //set max confetti count
confetti.speed = 3;          //set the particle animation speed
confetti.frameInterval = 20; //the confetti animation frame interval in milliseconds
confetti.alpha = 1.0;        //the alpha opacity of the confetti (between 0 and 1, where 1 is opaque and 0 is invisible)
confetti.gradient = false;   //whether to use gradients for the confetti particles

const countDownDate = new Date(countDownDateText).getTime();
const now = new Date().getTime();

let countdownEnded = false;


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
      countdownEnded = true;
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

const showConfetti = (bot) => {
  confetti.start();
  document.querySelector("#word1").innerHTML = "winnaar";
  document.querySelector("#word2").innerHTML = bot;
  
  anime({
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
    let audio = new Audio(url);
    audio.volume = "0.7";
    audio.play();
}

const sleep = (ms) => {
    return new Promise((resolve) => setTimeout(resolve, ms));
}

