let playList;

document.addEventListener('DOMContentLoaded', () => {
  hidePage();
  clockCheck();

  launchOverlayStream();
});

const getPlaylist = () => {
    const Http = new XMLHttpRequest();
    Http.open("GET", "/api?type=playlist");
    Http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    Http.onreadystatechange = () => {
        console.log(Http.getResponseHeader("playlist"));
    }
}
const clockCheck = () => {
  if(countDownDate - new Date().getTime() > 0) {
      getPlaylist();
      //waitingMusicPlay();
      setTimeout(initClock, 5000);
      document.querySelector("body").classList.add("countdown");
  } else countdownEnded = true;
}

const reconnect = (error) => {
  console.error('Socket is closed. Reconnect will be attempted in 1 second.', error);
  setTimeout(launchOverlayStream, 1000);
}
setTimeout(() => switchControl({"scene": "ROBot Jetten"}), 1000);
const switchControl = (messageData) => {
    console.log(messageData)
  if(countdownEnded) {
    switch(messageData.scene)
    {
        case "confetti":
          showConfetti(messageData.bot);
        break;
        case "stop":
          stopConfetti();
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
            playAudio("/tpl/assets/sound/Lenards_Team_Song.mpeg");
        break;
        default:
            lapCounterControl(messageData.sound);
        break;
    }
  } 
  else if(!countdownEnded) {
      /*
    switch (messageData.audio) 
    {
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
       */
  }
}

const launchOverlayStream = () =>
{
    if ("WebSocket" in window)
    {
      const overlaysWebsocket = new WebSocket(webSocketURL + "49151");

      overlaysWebsocket.addEventListener('open', () => { 
        connectedMessage();
        overlaysWebsocket.send(JSON.stringify({"type": "overlay", "action": "connected"}));
      });
      overlaysWebsocket.addEventListener('message', (e) => switchControl(JSON.parse(e.data)));
      overlaysWebsocket.addEventListener("close", (e) =>  reconnect(e.reason));
    }
    else alert("WebSocket is NOT supported by your Browser!");
}
