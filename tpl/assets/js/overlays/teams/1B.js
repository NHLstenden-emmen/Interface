var DimitriDance = document.getElementById("Dimitrivideo");
const hideDimitri = () => {
	setTimeout(function () {
		$("#Dimitrivideo").removeClass("showDimitri");
		$("#Dimitrivideo").addClass("hideDimitri");
		DimitriDance.pause();
		DimitriDance.currentTime = 0;
	}, 9000);
};

const readyBot1B = () => {
	$("#Dimitrivideo").removeClass("hideDimitri");
	$("#Dimitrivideo").addClass("showDimitri");
	DimitriDance.play();
	hideDimitri();
};
