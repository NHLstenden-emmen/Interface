var livechatWebSocket, fullname, level, email, team, user_id;

const liveChat = document.getElementById("liveChat");        
const chatInput = document.getElementById("liveChatInput");

function scrollTableLoad() { 
    $(".chatStyle").stop().animate({ scrollTop: $(".chatStyle")[0].scrollHeight}, 200);
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

function showMessage(message, id, username)
{
    var messageElement = document.createElement("div");
    messageElement.classList.add("message");
    messageElement.id = id;

    var messageContent = document.createElement("div");
    messageContent.classList.add("messageContent");

    var messageUsername = document.createElement("p");
    messageUsername.classList.add("user");
    messageUsername.innerHTML = '<i class="avatar fas fa-user-circle"></i>&nbsp&nbsp' + username;

    var messageText = document.createElement("p");
    messageText.classList.add("message");
    messageText.appendChild(document.createTextNode(message));


    messageContent.appendChild(messageUsername);
    messageContent.appendChild(messageText);
    
    messageElement.appendChild(messageContent);

    //liElement.appendChild(document.createElement("username").innerHTML = messageData.username);
    //messageElement.appendChild(document.createTextNode(message));

    if(localStorage.getItem("level") == 2) {
        const deleteButton = document.createElement("i");
        deleteButton.className = "far fa-trash-alt";
        deleteButton.setAttribute("onclick", "javascript:deleteMessage("+id+")");
        messageElement.appendChild(deleteButton);
    }

    liveChat.appendChild(messageElement);

    scrollTableLoad();
    //document.getElementById("chatMSG").appendChild(linebreak);
}

function sendPoll(option) {
    livechatWebSocket.send(JSON.stringify({"name": localStorage.getItem("email"), "type": "poll", "option": option}));
}

function sendDrawingPoll(stars, bot, id) {
    livechatWebSocket.send(JSON.stringify({"name": localStorage.getItem("email"), "type": "drawingpoll", "bot": bot, "stars":parseInt(stars)+1, "id": id}));
}

function showPollResult(messageData)
{
    var liElement = document.createElement("li");
    liElement.id = messageData.id;

    liElement.classList.add("pollresult");

    var pElement = document.createElement("li");
    sortByValue(messageData.result).forEach(element => pElement.appendChild(document.createTextNode(element[0] + " heeft " + element[1] + " stemmen ")));

    liElement.appendChild(pElement);

    liveChat.appendChild(liElement);
    scrollTableLoad();
}

function showPoll(messageData)
{
    var liElement = document.createElement("li");
    liElement.appendChild(document.createTextNode(messageData.question));
    liElement.id = messageData.id;
    liElement.classList.add("poll");
    var optionsList = messageData.options;

    for(var option in messageData.options) {
        var buttonElement = document.createElement("button");
        buttonElement.innerHTML = optionsList[option];
        buttonElement.setAttribute("onclick", "javascript:sendPoll('"+optionsList[option]+"')");
        liElement.appendChild(buttonElement);
    }

    liveChat.appendChild(liElement);
    scrollTableLoad();
}


function showDrawingPoll(messageData) 
{
    var liElement = document.createElement("li");
    liElement.appendChild(document.createTextNode(messageData.question));
    liElement.id = messageData.id;
    liElement.classList.add("poll");
    var optionsList = messageData.options;

    for(var option in messageData.options) {
        var buttonElement = document.createElement("button");
        buttonElement.innerHTML = optionsList[option];
        buttonElement.setAttribute("onclick", "javascript:sendDrawingPoll('"+option+"', '"+messageData.bot+"', '"+messageData.id+"')");
        liElement.appendChild(buttonElement);
    }

    liveChat.appendChild(liElement);
    scrollTableLoad();
}

function onJoin(messageData) {
    if(messageData.user_id == user_id)
    {
        localStorage.setItem("fullname",  messageData.username);
        localStorage.setItem("email",  messageData.email);
        localStorage.setItem("level",  messageData.level);
        localStorage.setItem("team",   messageData.team);

        showMessage(messageData.message, messageData.id,localStorage.getItem("fullname"));
    } 
    else 
    {
        showMessage(messageData.message, messageData.id,messageData.username);
    }
    
}

function onLeave(messageData) {
    showMessage(messageData.message, messageData.id, messageData.username);
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

function launchLiveChat(user_idInput)
{
    if ("WebSocket" in window)
    {
        user_id = user_idInput;
        livechatWebSocket = new WebSocket("ws://77.162.30.112:49152");
        
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
                    default:
                        showMessage(messageData.message, messageData.id, messageData.username);
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