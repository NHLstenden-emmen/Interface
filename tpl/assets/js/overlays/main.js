let brokkoIndex = 0;


document.addEventListener('DOMContentLoaded', () => {
  hidePage();
  clockCheck();

  launchOverlayStream();
});

const getPlaylist = () => {
    const Http = new XMLHttpRequest();
    Http.open("GET", "/api?data=playlist");
    Http.send();

    Http.onreadystatechange = () => {
        if (Http.readyState == 4 && Http.status == 200) {
            const playList = JSON.parse(Http.getResponseHeader("playlist"));
            startJukeBox(playList);
        }
    }
}

const clockCheck = () => {
  if(countDownDate - new Date().getTime() > 0) {
      setTimeout(initClock, 5000);
      getPlaylist();
      document.querySelector("body").classList.add("countdown");
  } else countdownEnded = true;
}

const reconnect = (error) => {
  console.error('Socket is closed. Reconnect will be attempted in 1 second.', error);
  setTimeout(launchOverlayStream, 1000);
}


setTimeout(() => switchControl({"scene": "Wall-D"}), 1000);


const switchControl = (messageData) => {
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
            brokkoIndex++;
            if(brokkoIndex >= 3) {
                brokkoIndex = 0;
            } else {
                playAudio("/tpl/assets/sound/team/1C"+brokkoIndex+".mp3");
            }
        break;
        case "BumbleBert":
            playAudio("/tpl/assets/sound/team/1A.mp3");
        break;
        case "Wall-D":
            playAudio("/tpl/assets/sound/team/1D.mp3");
        break;
        case "ROBot Jetten":
            readyBot1E();
            playAudio("/tpl/assets/sound/team/1E.mp3");
        break;
        case "Dimitri":
            let dimitri = document.getElementById("Dimitrivideo");

            dimitri.style.display = "block";
            dimitri.volume = "0.5";
            dimitri.play();
            dimitri.addEventListener('ended', () => dimitri.style.display = "none");
        break;
        default:
            lapCounterControl(messageData.sound);
        break;
    }
  }
}

const launchOverlayStream = () => {
    if ("WebSocket" in window) {
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
