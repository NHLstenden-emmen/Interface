/* Burger Menu Controller */
const burgerMenu = () => {
	const burger = document.querySelector(".mobileBurger");
	const navbar = document.querySelector(".nav");
	const nav = document.querySelector("#navbar");

	const navLinks = document.querySelectorAll(
		"ul > li, .dropdown-content > a"
	);
	const body = document.querySelector("body");

	burger.addEventListener("click", () => {
		nav.classList.toggle("active");
		navbar.classList.toggle("active");
		body.classList.toggle("active");

		document.querySelector("#menu").classList.toggle("active");

		navLinks.forEach((link, index) => {
			link.style.opacity = "0";
			if (link.style.animation) {
				link.style.animation = "";
			} else {
				link.style.animation = `navLinkFade 0.5s ease forwards ${
					index / 7 + 0.5
				}s`;
			}
		});

		window.addEventListener("resize", () => 
		{
			navLinks.forEach((link, index) => {
				link.style.opacity = "1";
			});
		});

		burger.classList.toggle("active");
	});
};

const menuLinks = () => {
	const menuLink = document.querySelectorAll(".link");
	menuLink.forEach((link, index) => {
		link.addEventListener("click", () => {
			window.location.href = menuLink[index].dataset.link;
		});
	});
};

const sortByValue = (jsObj) => {
	return Object.entries(jsObj).sort((a, b) => {
		if (a[1] < b[1]) {
			// Numeric value from a is smaller than from b
			return 1; // -> b before a
		}
		if (a[1] < b[1]) {
			// Numeric value from a is bigger than from b
			return -1; // -> a before b
		}
		if (a[0] > b[0]) {
			// Name from b comes alphabetically before name from a
			return 1; // -> b before a
		}
		if (a[0] < b[0]) {
			// Name from b comes alphabetically after name from a
			return -1; // ->  a before b
		}
		return 0; // No difference found
	});
};

const isJSON = (item) => {
	item = typeof item !== "string" ? JSON.stringify(item) : item;

	try {
		item = JSON.parse(item);
	} catch (e) {
		return false;
	}

	if (typeof item === "object" && item !== null) {
		return true;
	}

	return false;
};

const toastShow = (type, id, title, message, buttons = null, length = null) => {
	var current = new Date();

	let Toast = document.createElement("div");
	Toast.setAttribute("role", "alert");
	Toast.setAttribute("aria-live", "assertive");
	Toast.setAttribute("aria-atomic", "true");
	Toast.setAttribute("class", "toast");
	if(length != null) {
		Toast.setAttribute("data-autohide", "true");
		Toast.setAttribute("data-delay", length * 1000);
	}
	else {
		Toast.setAttribute("data-autohide", "false");
	}


	Toast.id = id;

	// logo of the toast
	let ToastImage = document.createElement("img");
	ToastImage.src = "/tpl/assets/images/server.png";
	ToastImage.classList.add("rounded", "mr-2")
	ToastImage.alt = "Toast logo";
	
	// Title of the toast
	let ToastStrong = document.createElement("strong");
	ToastStrong.innerHTML = title;

	// save the time it was created at
	let ToastSmall = document.createElement("small");
	ToastSmall.classList.add("text-muted")
	ToastSmall.innerHTML = current.toLocaleTimeString('nl-NL');

	// button
	let closeButton = document.createElement("button");
	closeButton.classList.add("ml-2", "mb-1", "close");
	closeButton.setAttribute("data-dismiss", "toast");
	closeButton.setAttribute("aria-label", "Close");

	// span of the button
	let closeButtonSpan = document.createElement("span");
	closeButtonSpan.innerHTML = "&times;";
	closeButtonSpan.setAttribute("aria-hidden", "true");

	closeButton.appendChild(closeButtonSpan);

	let ToastHeader = document.createElement("div");
	ToastHeader.classList.add("toast-header");

	let ToastBody = document.createElement("div");
	ToastBody.classList.add("toast-body");
	// check if a button is needed in the toast

	if(buttons != 'undefined' && buttons != null && type == 'default') {
		//buttons.
		ToastBody.appendChild(document.createTextNode(message));

		for(var option in buttons) {
			var buttonElement = document.createElement("button");
			buttonElement.classList.add("B" +id, "button");
			buttonElement.innerHTML = buttons[option];
			buttonElement.setAttribute("onclick", "javascript:sendPoll('"+buttons[option]+"', '"+id+"')");
			ToastBody.appendChild(buttonElement);
		}
	} else if(type == 'drawing') {

	}
	else {
		ToastBody.appendChild(document.createTextNode(message));
	}

	// append the childs (the content) to the Toast
	ToastHeader.appendChild(ToastImage);
	ToastHeader.appendChild(ToastStrong);
	ToastHeader.appendChild(ToastSmall);
	ToastHeader.appendChild(closeButton);

	Toast.appendChild(ToastHeader);
	Toast.appendChild(ToastBody);

	// find the placeToast id and appendChild Toast to it
	document.querySelector("#placeToast").appendChild(Toast);

	// show the toast with the settings
	$('#' + Toast.id).toast('show');
	$('#' + Toast.id).on('hidden.bs.toast', function (e) {
		deleteToast(e.currentTarget.id);
	});
}

const deleteToast = (id) =>{
	document.getElementById(id).remove();
}

document.addEventListener("DOMContentLoaded", function () {
	menuLinks();
	burgerMenu();
});

// Zorgt voor volledige grijze achtergrond voor scrollen body
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
	document.body.style.backgroundColor = "#0f0f0f";
}