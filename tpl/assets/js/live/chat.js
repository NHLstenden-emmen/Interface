var livechatWebSocket, fullname, level, email, team, user_id;

const liveChat = document.getElementById("liveChat");        
const chatInput = document.getElementById("liveChatInput");

function scrollTableLoad() { 
    $(".chatStyle").stop().animate({ scrollTop: $(".chatStyle")[0].scrollHeight}, 700);
}

function typeMessage(ele) {
    if(event.key === 'Enter')  sendMessage();
}

function deleteMessage(messageID) {
   livechatWebSocket.send(JSON.stringify({"team": localStorage.getItem("team"), "fullname": localStorage.getItem("fullname"), "email": localStorage.getItem("email"), "type": "delete", "id": messageID}));
}

function deleteResponse(messageID) {
   document.getElementById(messageID).remove();
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
    messageUserIcon.style.width = "2rem";
    messageUserIcon.style.marginRight = ".5rem";

    if(team != null && team != 'undefined' && username != 'Server' && level != 2) {
        messageUserIcon.src = "/tpl/assets/images/team/" + team + "/logoResize.png";
        messageUsername.appendChild(messageUserIcon);
        messageUsername.appendChild(document.createTextNode(username));

    } else if(username == 'Server') {
        messageUserIcon.src = "/tpl/assets/images/server.png";
        messageUsername.appendChild(messageUserIcon);
        messageUsername.appendChild(document.createTextNode(username));
    } else if(level != null && level == 2) {
        if(team != null && team != 'undefined'){
            messageUserIcon.src = "/tpl/assets/images/team/" + team + "/logoResize.png";

            var usernameWrapper = document.createElement("span");

            var usernameMod = document.createElement("i");
            usernameMod.classList.add("fas", "fa-wrench");
            usernameMod.style.color = "#37167e";

            usernameWrapper.appendChild(usernameMod);
            usernameWrapper.appendChild(document.createTextNode(" " + username + " [MOD]"));

            messageUsername.appendChild(messageUserIcon);
            messageUsername.appendChild(usernameWrapper);
        } else {
            messageUsername.appendChild(document.createTextNode(usernameMod));        }
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
        deleteButton.setAttribute("onclick", "javascript:deleteMessage("+id+")");
        messageText.appendChild(deleteButton);
    }

    messageContent.appendChild(messageUsername);
    messageContent.appendChild(messageText);
    
    messageElement.appendChild(messageContent);

    liveChat.appendChild(messageElement);

    scrollTableLoad();
}

function sendPoll(option, id) {
    livechatWebSocket.send(JSON.stringify({"name": localStorage.getItem("email"), "email": localStorage.getItem("email"), "team": localStorage.getItem("team"), "fullname": localStorage.getItem("fullname"), "type": "poll", "option": option, "id": id}));
}

function sendDrawingPoll(stars, bot, id) {
    livechatWebSocket.send(JSON.stringify({"name": localStorage.getItem("email"), "email": localStorage.getItem("email"), "team": localStorage.getItem("team"), "fullname": localStorage.getItem("fullname"), "type": "drawingpoll", "bot": bot, "stars":parseInt(stars)+1, "id": id}));
}

function showPollResult(messageData) {
    var resultMessage = "";
    sortByValue(messageData.result).forEach(element => resultMessage += " " + element[0] + " heeft " + element[1] + " stemmen ");
    setTimeout(() => {      toastShow('default', messageData.id, 'Server | Poll resultaat', resultMessage, null, 10);}, 2000);

}

function showPoll(messageData) {
    toastShow('default', messageData.id, 'Server | Poll', messageData.question, messageData.options, messageData.length);
}


function showDrawingPoll(messageData) {
    toastShow('drawing', messageData.id, 'Server | Tekening', messageData.question, messageData.options, messageData.length);
}

function onJoin(messageData) {
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

function onLeave(messageData) {
    showMessage(messageData.message, messageData.id, messageData.username, messageData.level, messageData.team);
}

function sendMessage() {
    if(livechatWebSocket != null) {
        if(chatInput.value.trim() != "") {
            livechatWebSocket.send(JSON.stringify({"team": localStorage.getItem("team"), "fullname": localStorage.getItem("fullname"), "email": localStorage.getItem("email"), "type": "send", "message": chatInput.value}));
            // Clear chat
            chatInput.value = "";
        } else {
            // Clear chat
            chatInput.value = "";
        }
    }
    else {
        console.log("Helaas pindakaas, er ging iets fout");
        chatInput.value = "";
    }
}

function disableButton(id){ 
    document.querySelectorAll("." + id).forEach(element => element.disabled = true);
}

function launchLiveChat(user_idInput)
{
    if ("WebSocket" in window)
    {
        user_id = user_idInput;
       livechatWebSocket = new WebSocket("ws://194.171.181.139:49152");
        
        livechatWebSocket.onopen = function() {
            console.log("Connection to server with url : " + livechatWebSocket.url);
            livechatWebSocket.send(JSON.stringify({"user_id": user_id, "type": "join"}));
        };
    
        livechatWebSocket.onmessage = function (message) { 
            if(isJSON(message.data)) {
                var messageData = JSON.parse(message.data);
                switch(messageData.type) {
                    case "join":
                        onJoin(messageData);
                    break;
                    case "leave":
                        onLeave(messageData);
                    break;
                    case "delete":
                        deleteResponse(messageData.id);
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
                    case "disablepollbutton":
                        disableButton(messageData.id);
                    break;
                    case "readysignal":
                        toastShow('default', 0, 'Server | Ready', "[" + messageData.match + "] " + messageData.team + " zet jullie robot klaar!", null, 10);
                    break;
                    default:
                        showMessage(messageData.message, messageData.id, messageData.username, messageData.level, messageData.team);
                    break;
                }
            }
        };
    
        livechatWebSocket.onclose = function() { 
            livechatWebSocket.close();
            showMessage("Connection has been closed", 0, "Server");
        }
    }
    else
    {
        alert("WebSocket is NOT supported by your Browser!");
    }
}