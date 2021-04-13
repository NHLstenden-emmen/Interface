let livechatWebSocket, user_id, blockedWords;
let current = new Date();
const cooldownChat = 1.0;

const liveChat = document.getElementById("liveChat");
const chatInput = document.getElementById("liveChatInput");

//Senders
const typeMessage = () => { if(event.key == 'Enter') sendMessage() }
const sendDelete = (id) =>  livechatWebSocket.send(JSON.stringify({"type": "delete", "id": id}));
const sendMessage = () => {
  let last;
  if (user_id != 0) {
    document.querySelector('#emojiCheckbox').checked = false;
    const messageInput = chatInput.value.trim();
    if(messageInput != "") {
      // Message validation
      let MessageInput = chatInput.value.trim();

      const MessageWords = MessageInput.toLowerCase().split(" ");
      let countWords = 0;

      for (let i = 0; i < MessageWords.length; i++) {
          if (blockedWords && blockedWords.includes(MessageWords[i])) {
            countWords++;
          }
      }

      if (countWords > 0) {
        livechatWebSocket.send(JSON.stringify({"type": "banned"}));
        //alert('Please don\'t swear!');

        //FIXME fix cooldown
      }
/*
      else {
        MessageInput = MessageInput.replace(/(<([^>]+)>)/gi, "");
        if (MessageInput.length != 0) {

          last = new Date();
          if ((last.getTime() - current.getTime()) / 1000 < cooldownChat) {
            alert('Try not to spam!');
          } else {
            livechatWebSocket.send(JSON.stringify({"type": "send", "message": MessageInput}));
            current = new Date();
          }

        } else {
          livechatWebSocket.send(JSON.stringify({"type": "banned"}));
          alert('Injections won\'t work ;)');
        }
      }
*/

      if (MessageInput.toLowerCase() == "f") {
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
    const messageElement = document.createElement("div");
    const youAreMod = (localStorage.getItem("level") == 2);
    let userHTML = "";

    messageElement.classList.add("messageBlock");
    messageElement.setAttribute("id", id);
    messageElement.dataset.userId = userId;

    let foundEmojis = message.match(/\p{Emoji_Presentation}/gu);

    if(foundEmojis) {
      foundEmojis = foundEmojis.filter((v, i, a) => a.indexOf(v) == i);
      for(let i = 0; i < foundEmojis.length; i++) {
        message = message.replaceAll(foundEmojis[i], '<label class="emojiLabel">' + foundEmojis[i] + '</label>');
      }
    }

    if(!liveChat.hasChildNodes() || (liveChat.hasChildNodes() && userId != liveChat.lastChild.dataset.userId)) {
      if(userId == -420) {
        userHTML = `
              <p class="user">
                  <img src="/tpl/assets/images/rick.png" alt="rick" style="width: 1.3rem; margin-right: 0.5rem;">
                  Rick Astley
              </p>
              `;
      } else {
        const isTeam = team;
        const isMod = (level >= 3);
        username += team != undefined ? isTeam ? " [" + team + "]" : "" + isMod ? "[MOD]" : "" : isTeam ? "" : "" + isMod ? "" : "";

        userHTML = `
              <p class="user"">
                  ` + (isTeam ? `<img alt="team" src="/tpl/assets/images/team/` + team + `/logoResize.png" style="width: 2.5rem; margin-right: 0.5rem;">` : "")  + `
                  ` + (isMod ? `<i class="fas fa-wrench" style="color: rgb(55, 22, 126); margin-right: 0.1rem;"></i>&nbsp&nbsp` : (!isTeam ? `<i class="avatar fas fa-user-circle"></i>&nbsp&nbsp` : "")) + username + `
              </p>`;
      }
    }


    let messageHTML = `
      <p class="message ` + type + `">
          ` + document.createTextNode(message).nodeValue + `
          ` + (youAreMod ? (userId != -420) ? `<i class="far fa-trash-alt" onclick="sendDelete(` + id + `)"></i>` : "" : "") + `
      </p>`;

    if(!message.includes("undefined")) {
      messageElement.innerHTML = `
          <div class="messageContent">
              ` + userHTML + `
              ` + messageHTML + `
          </div>
          `;
      liveChat.appendChild(messageElement);
    }

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

const launchLiveChat = (user_idInput) => {
  $.getJSON('/api?data=bannedWords', (data) => {
      blockedWords = data;
  });

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


