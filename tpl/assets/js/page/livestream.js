
/* Set height chatbox automatically */

const chatBox = document.querySelector('#liveChat');
var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
chatBox.style.height = videoHeight + "px";

window.onresize = function(event) {
    var videoHeight = document.querySelector('#livestreamVideo').offsetHeight;
    chatBox.style.height = videoHeight + "px";
};