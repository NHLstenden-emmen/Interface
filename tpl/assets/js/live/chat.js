var livechatWebSocket, fullname, level, email, team, user_id;

const liveChat = document.getElementById("liveChat");        
const chatInput = document.getElementById("liveChatInput");

const typeMessage = () => { if(event.key === 'Enter')  sendMessage(chatInput.value.trim()); }

//Senders
const sendDelete = (id) =>  livechatWebSocket.send(JSON.stringify({"type": "delete", "id": id}));
const sendPoll = (option, id) => livechatWebSocket.send(JSON.stringify({"type": "poll", "option": option, "id": id}));
const sendDrawingPoll = (stars, bot, id) => livechatWebSocket.send(JSON.stringify({"type": "drawingpoll", "bot": bot, "stars":parseInt(stars)+1, "id": id}));
const sendMessage = (input) => { if(input != "") livechatWebSocket.send(JSON.stringify({"type": "send", "message": input})); chatInput.value = ""};

//Receivers
const deleteMessage = (id) => document.getElementById(id).remove();
const onLeave = (messageData) => showMessage(messageData.message,messageData.id, messageData.username, messageData.level, messageData.team);
const showDrawingPoll = (messageData) =>  toastShow('drawing', messageData.id, 'Server | Tekening', messageData.question, messageData, messageData.length);
const showPoll = (messageData) => toastShow('default', messageData.id, 'Server | Poll', messageData.question, messageData.options, messageData.length);
const closePolls = () => { document.querySelectorAll(".drawingpoll").forEach(element => element.remove()); document.querySelectorAll(".regularpoll").forEach(element => element.remove());}


const onJoin = (messageData) => {
    if(messageData.user_id == user_id)
    {
        localStorage.setItem("fullname",  messageData.username);
        localStorage.setItem("email",  messageData.email);
        localStorage.setItem("level",  messageData.level);
        localStorage.setItem("team",   messageData.team);

        showMessage(messageData.message, messageData.id,localStorage.getItem("fullname"), localStorage.getItem("level"), localStorage.getItem("team"));
    } 
    else 
    {
        showMessage(messageData.message, messageData.id, messageData.username, messageData.level, messageData.team);
   }
}


function showMessage(message, id, username, level = null, team = null) {
    var messageElement = document.createElement("div");
    messageElement.classList.add("message");
    messageElement.id = id;

    var messageContent = document.createElement("div");
    messageContent.classList.add("messageContent");

    var messageUsername = document.createElement("p");
    messageUsername.classList.add("user");

    var messageUserIcon = document.createElement("img");
    messageUserIcon.style.width = "2.5rem";
    messageUserIcon.style.marginRight = ".5rem";

    if(localStorage.getItem("team") != 'undefined' && username != 'Server') {
        messageUserIcon.src = "/tpl/assets/images/team/" + localStorage.getItem("team") + "/logoResize.png";
        messageUsername.appendChild(messageUserIcon);
        messageUsername.appendChild(document.createTextNode(username));

    } 
    else if(username == 'Server') {
        messageUserIcon.src = "/tpl/assets/images/server.png";
        messageUsername.appendChild(messageUserIcon);
        messageUsername.appendChild(document.createTextNode(username));
    } 
    else if(username == 'Rick Astley') {
        messageUserIcon.style.width = "1.3rem";
        messageUserIcon.src = "/tpl/assets/images/rick.png";
        messageUsername.appendChild(messageUserIcon);
        messageUsername.appendChild(document.createTextNode(username));
    } else if(level != null && level == 2) {
        var usernameWrapper = document.createElement("span");

        var usernameMod = document.createElement("i");
        usernameMod.classList.add("fas", "fa-wrench");
        usernameMod.style.color = "#37167e";

        usernameWrapper.appendChild(usernameMod);
        usernameWrapper.appendChild(document.createTextNode(" " + username + " [MOD]"));

        if(team != null && team != 'undefined'){
            messageUserIcon.src = "/tpl/assets/images/team/" + team + "/logoResize.png";
            messageUsername.appendChild(messageUserIcon);
            messageUsername.appendChild(usernameWrapper);
        } else {
            messageUsername.appendChild(usernameWrapper);        }
    }
     else {
        messageUsername.innerHTML = '<i class="avatar fas fa-user-circle"></i>&nbsp&nbsp' + username;
    }



    var messageText = document.createElement("p");
    messageText.classList.add("message");
    messageText.appendChild(document.createTextNode(message));

    if(localStorage.getItem("level") == 2) {
        const deleteButton = document.createElement("i");
        deleteButton.className = "far fa-trash-alt";
        deleteButton.setAttribute("onclick", "javascript:sendDelete("+id+")");
        messageText.appendChild(deleteButton);
    }

    messageContent.appendChild(messageUsername);
    messageContent.appendChild(messageText);
    
    messageElement.appendChild(messageContent);

    //liElement.appendChild(document.createElement("username").innerHTML = messageData.username);
    //messageElement.appendChild(document.createTextNode(message));


    liveChat.appendChild(messageElement);

    $(".chatStyle").stop().animate({ scrollTop: $(".chatStyle")[0].scrollHeight}, 700);
}

function showPollResult(messageData) {
    var resultMessage = "";
    sortByValue(messageData.result).forEach(element => resultMessage += " " + element[0] + " heeft " + element[1] + " stemmen ");
    setTimeout(() => {      toastShow('default', messageData.id, 'Server | Poll resultaat', resultMessage, null, 30);}, 2000);

}

function showDrawResult(messageData) {
    var resultMessage = "";
    messageData.result.sort((a,b) => a.index - b.index).forEach((e) => resultMessage += " " + e.name + " heeft een score van " + e.score + " ");
    setTimeout(() => {      toastShow('default', messageData.id, 'Server | Poll resultaat', resultMessage, null, 30);}, 2000);
}



function messageListener(chatData) { 
    if(isJSON(chatData.data)) {
        var messageData = JSON.parse(chatData.data);
        switch(messageData.type) {
            case "join":
                onJoin(messageData);
            break;
            case "leave":
                onLeave(messageData);
            break;
            case "delete":
                deleteMessage(messageData.id);
            break;
            case "poll":
                showPoll(messageData);
            break;
            case "pollresult":
                showPollResult(messageData);
            break;
            case "drawingpoll":
                showDrawingPoll(messageData);
            break;
            case "drawresult":
                showDrawResult(messageData);
            break;
            case "disablepollbutton":
                disableButton(messageData.id);
            break;
            case "readysignal":
                toastShow('default', 0, 'Server | Ready', "[" + messageData.match + "] " + messageData.team + " zet jullie robot klaar!", null, 10);
            break;
            case "message":
                showMessage(messageData.message, messageData.id, messageData.username, messageData.level, messageData.team);
            break;
            case "rolled": 
                showMessage(messageData.username + " got rickrolled!", "rick", "Rick Astley", null, null);
            break;
            case "closepolls":
                closePolls();
            break;
            case "naughty": 
                window.location.href = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";
            break;
        }
    }
}
function launchLiveChat(user_idInput)
{
    if ("WebSocket" in window)
    {
        user_id = user_idInput;
        livechatWebSocket = new WebSocket("ws://77.162.30.112:49152");

        livechatWebSocket.addEventListener("open", () =>  livechatWebSocket.send(JSON.stringify({"user_id": user_id, "type": "join"})));
        livechatWebSocket.addEventListener("message", (chatData) => messageListener(chatData));
        livechatWebSocket.addEventListener("close", () => {
            showMessage("Connection has been closed", 0, "Server");
            console.log('Socket is closed. Reconnect will be attempted in 1 second.', e.reason);
            setTimeout(() => launchLiveChat(user_id), 1000);
        });
    }
    else
    {
        alert("WebSocket is NOT supported by your Browser!");
    }
}