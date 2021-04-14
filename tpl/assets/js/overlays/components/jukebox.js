const songPath = "./tpl/assets/sound/countdown/";
const songFormat = ".mp3";
const waitingMusic = document.createElement("audio");
let currentIndex = 0;
let songIndicator = new SongIndicator();

const waitingMusicPlay = () => {
  if(currentIndex >= playlist.length) {
    currentIndex = 0;
    waitingMusic.src = songPath + playlist[0].SongID + songFormat;
    waitingMusic.pause();
  } else if(currentIndex == 0) {
    waitingMusic.src = songPath + playlist[0].SongID + songFormat;
    waitingMusic.play();
  } else {
    currentIndex = Math.floor(Math.random() * playlist.length);
    waitingMusic.src = songPath + playlist[currentIndex].SongID + songFormat;
    waitingMusic.play();
  }
  songIndicator.showNewSong(playlist[currentIndex]);
}

const waitingMusicPrev = () => {
  currentIndex--;
  if(currentIndex < 0) {
    currentIndex = playlist.length - 1;
  }
  waitingMusic.src = songPath + playlist[currentIndex].SongID + songFormat;
  waitingMusic.play();
  songIndicator.showNewSong(playlist[currentIndex]);
}

const waitingMusicNext = () => {
  currentIndex++;
  if(currentIndex >= playlist.length) {
    currentIndex = 0;
  }
  waitingMusic.src = songPath + playlist[currentIndex].SongID + songFormat;
  waitingMusic.play();
  songIndicator.showNewSong(playlist[currentIndex]);
}

waitingMusic.addEventListener('pause', () => {
    if(!countdownEnded) {
      waitingMusicNext();
    }
  });

const startJukeBox = (list) => {
  playlist = list;
  waitingMusicPlay();
}