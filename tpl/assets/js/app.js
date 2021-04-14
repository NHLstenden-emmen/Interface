const countDownDateText = "Apr 15, 2021 10:00:00";
const webSocketURL = "ws://77.162.30.112:";

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

		window.addEventListener("resize", () => {
			navLinks.forEach((link) => {
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

const isJSON = (item) => {
	item = typeof item !== "string" ? JSON.stringify(item) : item;

	try {
		item = JSON.parse(item);
	} catch (e) {
		return false;
	}

	return typeof item === "object" && item !== null;
};

document.addEventListener("DOMContentLoaded", () => {
	menuLinks();
	burgerMenu();
});

// Zorgt voor volledige grijze achtergrond voor scrollen body
if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
	document.body.style.backgroundColor = "#0f0f0f";
}
