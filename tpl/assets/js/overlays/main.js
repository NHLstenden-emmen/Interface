
document.addEventListener('DOMContentLoaded', () => {
  hidePage();
  launchOverlayStream();
  clockCheck();
});

const clockCheck = () => {
  if(countDownDate - new Date().getTime() > 0) {
      waitingMusicPlay();
      setTimeout(initClock, 5000);
      document.querySelector("body").classList.add("countdown");
  } else countdownended = true;
}

const reconnect = (error) => {
  console.error('Socket is closed. Reconnect will be attempted in 1 second.', error);
  setTimeout(launchOverlayStream, 1000);
} 

const switchControl = (messageData) => {
  if(countdownended) {
    switch(messageData.scene)
    {
        case "confetti":
          showConfetti(messageData.bot);
        break;
        case "stop":
          stopConfetti();
        break;
        case "stoplicht":
            showStoplicht();
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
            playAudio("/tpl/assets/sound/Lenards_Team_Song.mpeg");
        break;
    }
  } 
  else if(!countdownended) {
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
  }
}

const launchOverlayStream = () =>
{
    if ("WebSocket" in window)
    {
      const overlaysWebsocket = new WebSocket("ws:/194.171.181.139:49151");

      overlaysWebsocket.addEventListener('open', () => { 
        connectedMessage();
        overlaysWebsocket.send(JSON.stringify({"type": "overlay", "action": "connected"}));
      });
      overlaysWebsocket.addEventListener('message', (e) => switchControl(e.data));
      overlaysWebsocket.addEventListener("close", (e) =>  reconnect(e.reason));
    }
    else alert("WebSocket is NOT supported by your Browser!");
}
