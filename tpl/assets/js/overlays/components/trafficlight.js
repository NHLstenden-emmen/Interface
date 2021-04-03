const circles = document.querySelectorAll('.circle')
let activeLight = 0;

const changeLight = () => {
	circles[activeLight].className = 'circle';
	activeLight++;
	
	if(activeLight > 2) {
		activeLight = 0;
	}
	
	const currentLight = circles[activeLight]
	
	currentLight.classList.add(currentLight.getAttribute('color'));
}

const redLight = () => {
	circles[1].className = 'circle';
    circles[2].className = 'circle';
	circles[0].classList.add("red");
}

const yellowLight = () => {
	circles[0].className = 'circle';
    circles[2].className = 'circle';
	circles[1].classList.add("yellow");
}

const greenLight = () => {
	circles[0].className = 'circle';
    circles[1].className = 'circle';
	circles[2].classList.add("green");
}