initializeMonitor();

// Set user
let user = "Guest";

function setUser(Username) {
	user = atob(atob(Username));
}

// Get ip of user
let ipClient = "Unknown";
$.get('https://www.cloudflare.com/cdn-cgi/trace', function(data) {
	const dataSplit = data.split("\n");
	dataSplit.forEach(element => {
		const dataElement = element.split("=");
		if(dataElement[0] === "ip"){
			ipClient = dataElement[1];
		}
	});
});

function monitorAction() {
	const ua = navigator.userAgent;

	// Prevent spam
	let spamHistory = [];

	// Keyboard
	$(document).bind("keydown", function (e) {
		if (spamHistory.length > 9) {
			spamHistory.shift();
			spamHistory.push(e.keyCode);
		} else {
			spamHistory.push(e.keyCode);
		}

		if (
			spamHistory[0] == spamHistory[1] &&
			spamHistory[1] == spamHistory[2] &&
			spamHistory[2] == spamHistory[3] &&
			spamHistory[3] == spamHistory[4] &&
			spamHistory[4] == spamHistory[5] &&
			spamHistory[5] == spamHistory[6] &&
			spamHistory[6] == spamHistory[7] &&
			spamHistory[7] == spamHistory[8] &&
			spamHistory[8] == spamHistory[9]
		) {
			spamHistory.shift();
			spamHistory.push(e.keyCode);
		} else {
			// Keyboard
			$(document).ready(function () {
				const screenSize =
					window.screen.width * window.devicePixelRatio +
					"x" +
					window.screen.height * window.devicePixelRatio;

				$.post("/tpl/includes/monitorActions.php", {
					user: user,
					keyInt: e.keyCode,
					type: "Keyboard",
					device: ua,
					ip: ipClient,
					screen: screenSize,
					keyChar: String.fromCharCode(e.keyCode),
					url: window.location.href,
				});
			});
		}
	});

	$(document).ready(function () {
		$(document).click(function (event) {
			const screenSize =
				window.screen.width * window.devicePixelRatio +
				"x" +
				window.screen.height * window.devicePixelRatio;

			jQuery.fn.tagName = function () {
				return this.prop("tagName");
			};

			let clickTag = $(event.target).tagName();
			let clickID = $(event.target).attr("id");
			let clickClass = $(event.target).attr("class");
			let clickText = $(event.target).text();
			let clickSrc = $(event.target).attr("src");

			// Tag
			if (clickTag == undefined || clickTag == "NaN") {
				clickTag = "";
			} else {
				clickTag = clickTag.trim();
			}

			// ID
			if (clickID == undefined || clickID == "NaN" || clickID == "") {
				clickID = "No ID";
			} else {
				clickID = clickID.trim();
			}

			// Class
			if (
				clickClass == undefined ||
				clickClass == "NaN" ||
				clickClass == ""
			) {
				clickClass = "No class";
			} else {
				clickClass = clickClass.trim();
			}

			// Text
			if (
				clickText == undefined ||
				clickText == "NaN" ||
				clickText == ""
			) {
				clickText = "{NO-TEXT}";
			} else {
				clickText = "{" + clickText.trim() + "}";
			}

			// Src
			if (clickSrc == undefined || clickSrc == "NaN" || clickSrc == "") {
				clickSrc = "No src";
			} else {
				clickSrc = clickSrc.trim();
			}

			// Value voor DB
			const clickValue =
				"<" +
				clickTag +
				">\n." +
				clickClass +
				"\n#" +
				clickID +
				"\n" +
				clickText +
				"\n" +
				clickSrc;

			$(document).ready(function () {
				$.post("/tpl/includes/monitorActions.php", {
					user: user,
					keyInt: "",
					clickValue: clickValue,
					device: ua,
					ip: ipClient,
					screen: screenSize,
					type: "Left mouse",
					keyChar: "",
					url: window.location.href,
				});
			});
		});
	});
}

/* Block banned words from inputs
let blockedWords;
let banInput = false;
$.getJSON('http://robotv.serverict.nl/api?data=bannedWords', function(data) {
    blockedWords = data;
	$('input[type="text"]').on('input', function(e) {
		const value = $('input[type="text"]').val();
		if (!banInput && blockedWords.includes(value)){
			banInput = true;
			$('button[type="submit"]').attr('disabled', 'disabled');
		} else {
			banInput = false;
			$('button[type="submit"]').removeAttr('disabled');
		}
	});
});
 */

function initializeMonitor() {
	const url = window.location.href;
	if (!url.includes("login")) {
		if (!url.includes("register")) {
			monitorAction();
		}
	}
}

function readCookie(name) {
	const nameEQ = name + "=";
	const ca = document.cookie.split(';');
	for (let i = 0; i < ca.length; i++) {
		let c = ca[i];
		while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}