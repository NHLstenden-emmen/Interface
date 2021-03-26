var Joy = new JoyStick('joyDiv');

var joyIinputPosX = document.getElementById("joyPosizioneX");
var joyInputPosY = document.getElementById("joyPosizioneY");
var joyDirezione = document.getElementById("joyDirezione");
var joyX = document.getElementById("joyX");
var joyY = document.getElementById("joyY");

setInterval(function() {
    joyIinputPosX.value = Joy.GetPosX();
}, 50);
setInterval(function() {
    joyInputPosY.value = Joy.GetPosY();
}, 50);
setInterval(function() {
    joyDirezione.value = Joy.GetDir();
}, 50);
setInterval(function() {
    joyX.value = Joy.GetX();
}, 50);
setInterval(function() {
    joyY.value = Joy.GetY();
}, 50);