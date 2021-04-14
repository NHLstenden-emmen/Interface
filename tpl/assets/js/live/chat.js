let livechatWebSocket, user_id, blockedWordsReg;
let current = new Date();
const cooldownChat = 1.0;

const liveChat = document.getElementById("liveChat");
const chatInput = document.getElementById("liveChatInput");

//Senders
const typeMessage = () => { if(event.key == 'Enter') sendMessage() }
const sendDelete = (id) =>  livechatWebSocket.send(JSON.stringify({"type": "delete", "id": id}));
const sendMessage = () => {
    if (user_id != 0) {
        document.querySelector('#emojiCheckbox').checked = false;
        const messageInput = chatInput.value.trim();
        if(messageInput != "") {
            livechatWebSocket.send(JSON.stringify({"type": "send", "message": messageInput}));

            if (messageInput.toLowerCase() == "f") {
                window.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
                livechatWebSocket.send(JSON.stringify({"type": "rick"}));
            }
        }
    }

    chatInput.value = "";
}
//Receivers
const deleteMessage = (id) => {
    const message = document.getElementById(id);
    if(message) {
        const nextMessage = message.nextElementSibling;
        if(nextMessage && nextMessage.dataset.userId  == message.dataset.userId) {
            if(message.querySelector('.user')) {
                nextMessage.prepend(message.querySelector('.user'));
            }
        }
        message.remove();
    }
}

const onLeave = (messageData) => showMessage(messageData.type,messageData.message,messageData.id, messageData.username, messageData.userid, messageData.level, messageData.team);
const onJoin = (messageData) => {
    if(messageData.user_id == user_id) {
        localStorage.setItem("fullname",  messageData.username);
        localStorage.setItem("email",  messageData.email);
        localStorage.setItem("level",  messageData.level);
        localStorage.setItem("team",   messageData.team);

        showMessage(messageData.type,messageData.message, messageData.id,localStorage.getItem("fullname"), messageData.user_id, localStorage.getItem("level"), localStorage.getItem("team"));
    } else showMessage(messageData.type,messageData.message, messageData.id, messageData.username, messageData.user_id, messageData.level, messageData.team);
}

const showMessage = (type, message, id, username, userId, level = null, team = null) => {
    const youAreMod = (localStorage.getItem("level") >= 3);

    const containerElement = document.createElement("div");
    containerElement.classList.add("messageBlock");
    containerElement.setAttribute("id", id);
    containerElement.dataset.userId = userId;

    let userElement = document.createElement("p");
    userElement.classList.add("user");

    let messageElement = document.createElement("p");
    if(type != "message" && type) {
        messageElement.classList.add("message", type);
    } else {
        messageElement.classList.add("message");
    }

    // --- Banned words ---
    let matches = message.match(blockedWordsReg);
    if(matches) {
        if(youAreMod) {
            messageElement.style.setProperty("color", "red");
        } else {
            for (let i = 0; i < matches.length; i++) {
                if(matches[i].length > 4) {
                    message = message.replaceAll( new RegExp(matches[i], "ig"), "*".repeat(matches[i].length));
                } else {
                    message = message.replaceAll(new RegExp("\\b" + matches[i] + "\\b", "ig"), "*".repeat(matches[i].length));
                }
            }
        }
    }
    // --------------------

    // - Message + emojis -
    let foundEmojis = message.match(/\p{Emoji_Presentation}/gu);
    let splitMessage = message.split(/\p{Emoji_Presentation}/gu);

    for(let i = 0; i < splitMessage.length; i++) {
        messageElement.appendChild(document.createTextNode(splitMessage[i]));

        if(i < splitMessage.length - 1) {
            var emojiLabel = document.createElement("label");
            emojiLabel.classList.add("emojiLabel");
            emojiLabel.textContent = foundEmojis[i];
            messageElement.appendChild(emojiLabel);
        }
    }
    // --------------------

    // ----- User tag -----
    if(!liveChat.hasChildNodes() || (liveChat.hasChildNodes() && userId != liveChat.lastChild.dataset.userId)) {
        if(userId == -420) {
            userElement.innerHTML = `
              <img src="/tpl/assets/images/rick.png" alt="rick" style="width: 1.3rem; margin-right: 0.5rem;">
              Rick Astley
              `;
        } else {
            const isTeam = ["1A", "1B", "1C", "1D", "1E"].includes(team);
            const isMod = (level >= 3);
            username += (isTeam ? " [" + team + "]" : "") + (isMod ? "[MOD]" :  "");

            userElement.innerHTML = `
                  ` + (isTeam ? `<img alt="team" src="/tpl/assets/images/team/` + team + `/logoResize.png" style="width: 2.5rem; margin-right: 0.5rem;">` : "")  + `
                  ` + (isMod ? `<i class="fas fa-wrench" style="color: rgb(55, 22, 126); margin-right: 0.1rem;"></i>&nbsp&nbsp` : (!isTeam ? `<i class="avatar fas fa-user-circle"></i>&nbsp&nbsp` : ""));
            userElement.appendChild(document.createTextNode(username));
        }
        containerElement.appendChild(userElement);
    }
    // --------------------

    // ---- Mod tools -----
    if(youAreMod && userId != -420) {
        var trashcan = document.createElement("i");
        trashcan.classList.add("far", "fa-trash-alt");
        trashcan.setAttribute("onclick", "sendDelete(" + id + ")");
        messageElement.appendChild(trashcan);
    }
    // --------------------

    containerElement.appendChild(messageElement);

    liveChat.appendChild(containerElement);

    $('#liveChat').stop().animate({ scrollTop: $("#liveChat")[0].scrollHeight}, 700);
}

const updateViewerCount = (amount) => {
    const container = document.getElementById('viewerCounter');
    container.classList.add('pre-animation');
    container.innerHTML = amount;
    setTimeout(() => {
        container.classList.remove('pre-animation')
    },1000);
}

function messageListener(chatData) {
    if(isJSON(chatData.data)) {
        const messageData = JSON.parse(chatData.data);

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
            case "message":
                showMessage("", messageData.message, messageData.id, messageData.username, messageData.userid, messageData.level, messageData.team);
                break;
            case "rolled":
                showMessage(messageData.type, messageData.username + " got rickrolled!", "rick", "Rick Astley", -420, null, null);
                break;
            case "viewerCount":
                updateViewerCount(messageData.amount);
                break;
            case "naughty":
                window.location.href = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";
                break;
        }
    }
}

$.getJSON('/api?data=bannedWords', (data) => {
    data = data.map(s => s.Value.trim()).map(s => s.length > 4 ? s : "\\b" + s + "\\b");
    blockedWordsReg = new RegExp(data.join('|'), 'gi');
});

const launchLiveChat = (user_idInput) => {
    if ("WebSocket" in window) {
        user_id = user_idInput;
        livechatWebSocket = new WebSocket("ws://77.162.30.112:49152");
        livechatWebSocket.addEventListener("message", (chatData) => messageListener(chatData));

        livechatWebSocket.addEventListener("open", () =>  {
            showMessage("server", "Deze livechat wordt gemodereerd! Schelden in de chat kan resulteren in een automatische ban. Tevens kunnen individuele berichten worden verwijderd door een moderator. Never gonna give you up!", "0", "Server", -420);
            livechatWebSocket.send(JSON.stringify({"user_id": user_id, "type": "join"}));
        });

        livechatWebSocket.addEventListener("close", (e) => {
            console.log('Socket is closed. Reconnect will be attempted in 1 second.', e.reason);
            setTimeout(() => launchLiveChat(user_id), 1000);
        });
    }
    else alert("WebSocket is NOT supported by your Browser!");
}


