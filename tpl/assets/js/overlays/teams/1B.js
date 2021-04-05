var DimitriDance = document.getElementById("Dimitrivideo");
const hideDimitri = () => {
	setTimeout(function () {
		$("#Dimitrivideo").removeClass("showDimitri");
		$("#Dimitrivideo").addClass("hideDimitri");
		DimitriDance.pause();
		DimitriDance.currentTime = 0;
		removeDimitri();
	}, 5000);
};

const removeDimitri = () => {
	setTimeout(function () {
		$("#Dimitrivideo").removeClass("hideDimitri");
		DimitriDance.pause();
		DimitriDance.currentTime = 0;
	}, 1000);
};

const readyBot1B = () => {
	$("#Dimitrivideo").addClass("showDimitri");
	DimitriDance.play();
	hideDimitri();
};
