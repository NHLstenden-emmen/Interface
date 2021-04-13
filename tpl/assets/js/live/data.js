let dataWebSocket, userId;

/* Senders */
const sendDrawingPoll = (e) => {
    const toastId = e.parentElement.parentElement.parentElement.id;
    const stars = e.dataset.stars;
    const bot = e.dataset.option;

    dataWebSocket.send(JSON.stringify({"type": "drawingpoll", "bot": bot, "stars":stars, "id": toastId}));
}

const sendRegularPoll = (e) => {
    const toastId = e.parentElement.parentElement.id;
    const option = e.dataset.option;
    dataWebSocket.send(JSON.stringify({"type": "poll", "option": option, "id": toastId}));
}

/* Receivers */
const showDrawingPoll = (messageData) => showPollToast(messageData.id, true, messageData.question, messageData.options);
const showRegularPoll = (messageData) => showPollToast(messageData.id, false, messageData.question, messageData.options);
const closePolls = () => {
    $( ".drawingpoll" ).each(() => {
        $(".drawingpoll").toast("hide");
    });
}

const currentlyPlaying = (bot, game) => {
    if(document.querySelector("video") !== null) {
        document.getElementById("currentGame").innerHTML = game;
        document.getElementById("currentRobot").innerHTML = bot;
    }
}


const dataWebsocketHandler = (type) => {
    if(isJSON(type)) {
      let serverMessage = JSON.parse(type.data);

        switch (serverMessage.type) {

            /* POLLS */
            case "drawingpoll":
                showDrawingPoll(serverMessage);
                break;

            case "regularPoll":
                showRegularPoll(serverMessage);
                break;

            case "closepolls":
                closePolls();
                break;

            /* TOASTS */
            case "regularToast":
                showToast(serverMessage.id, serverMessage.message, serverMessage.duration);
                break;
            case "readyToast":
                showReadyToast(serverMessage.id, serverMessage.message, serverMessage.bot, serverMessage.game, 10);
                break;
            case "resultToast":
                showResultToast(serverMessage.id, serverMessage.message, serverMessage.game, 10);
                break;

            /* UTILS */
            case "currentlyPlaying":
                currentlyPlaying(serverMessage.bot, serverMessage.game);
                break;

        }
    }
}

const dataWebSocketConnect = (id) => {
    userId = id;

    dataWebSocket = new WebSocket(webSocketURL + "49151");
    dataWebSocket.addEventListener("message", (type) => dataWebsocketHandler(type));

    dataWebSocket.addEventListener("close", (e) => {
        console.log("Connection closed due to: " + e + ", trying to reconnect in 1 second.");
        setTimeout(() => dataWebSocketConnect(userId), 1000);
    });

    dataWebSocket.addEventListener('open', (e) => {
        console.log("Connected!");
        dataWebSocket.send(JSON.stringify({"type": "user", "user_id": id}));
    });
}

document.addEventListener('DOMContentLoaded', () => {
    showPollToast(0, true, "test", {"CUSTOM" :['1', '2', '3', '4', '5']});
});
