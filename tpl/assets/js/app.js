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
			link.style.opacity = "1";
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

document.addEventListener("DOMContentLoaded", function () {
	menuLinks();
	burgerMenu();
});

/* Dashboard logo changer */
var currentURL = window.location.href;
var teams = ["1A", "1B", "1C", "1D", "1E"];
var teamsLength = teams.length;
const logoTeam = document.getElementById("logo");
for (var i = 0; i < teamsLength; i++) {
	var searchURL = currentURL.toUpperCase();
	var n = searchURL.search(teams[i]);
	if (n > 0) {
		logoTeam.src =
			"/tpl/assets/images/team/" + teams[i] + "/logoResize.png";
	}
}
