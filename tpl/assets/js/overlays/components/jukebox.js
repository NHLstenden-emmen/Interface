var songs = ['/tpl/assets/sound/countdown/2.mp3', 
              '/tpl/assets/sound/countdown/1.mp3'];

var waitingMusic = document.createElement("audio");
var currentIndex = 0;

const waitingMusicPlay = () => {
  if(currentIndex > songs.length) {
    currentIndex = 0;
    waitingMusic.src = songs[0];
    waitingMusic.pause();
  } else if(currentIndex == 0) {
    waitingMusic.src = songs[0];
    waitingMusic.play();
  }
  else {
    waitingMusic.src = songs[Math.floor(Math.random() * songs.length)];
    waitingMusic.play();
  }
}

const waitingMusicPrev = () => {
  if(currentIndex < -1) {
    currentIndex = -1;
    waitingMusic.src = songs[currentIndex];
  } else {
    waitingMusic.src = songs[currentIndex];
  }
  waitingMusic.play();
}

const waitingMusicNext = () => {
  if(currentIndex > songs.length) {
    currentIndex = -1;
    waitingMusic.src = songs[0];
    waitingMusic.pause();
  } else {
    waitingMusic.src = songs[currentIndex];
    waitingMusic.play();
  }
}

waitingMusic.addEventListener('pause', () => {
    currentIndex++;
    if(!countdownended) {
      waitingMusicPlay();
    }
  });