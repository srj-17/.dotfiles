import './style.css';
import showHome from './home'

let homeButton = document.querySelector('button.home');
let menuButton = document.querySelector('button.menu');
let aboutButton = document.querySelector('button.about');

homeButton.addEventListener('click', () => {
    showHome();
});

menuButton.addEventListener('click', () => {
    showMenu();
});

aboutButton.addEventListener('click', () => {
    
});

document.addEventListener('DOMContentLoaded', () => {
    let e = new Event('click');
    homeButton.dispatchEvent(e);
})