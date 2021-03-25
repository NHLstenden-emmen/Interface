/* Burger Menu Controller */
const burgerMenu = () => {
    const burger = document.querySelector('.mobileBurger');
    const navbar = document.querySelector('.nav');
    const nav = document.querySelector('#navbar');

    const navLinks = document.querySelectorAll('ul > li');
    console.table(navLinks);
    const body = document.querySelector('body');

    burger.addEventListener('click', ()=> {

        nav.classList.toggle('active');
        navbar.classList.toggle('active');
        body.classList.toggle('active');

        document.querySelector("#menu").classList.toggle("active");

        navLinks.forEach((link, index) =>{
            if(link.style.animation) {
                link.style.animation = '';
            }
            else 
            {
                link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
            }
        });

        burger.classList.toggle('active');
    });

}

const menuLinks = () => {
    const menuLink = document.querySelectorAll(".link");
    menuLink.forEach((link, index) => {
        link.addEventListener('click', () => {
            window.location.href = menuLink[index].dataset.link;
        });
    });
}

document.addEventListener("DOMContentLoaded", function(){
    menuLinks();
    burgerMenu();
});