import './style.css';
import showHome from './home'

let homeButton = document.querySelector('button.home');
let menuButton = document.querySelector('button.menu');
let aboutButton = document.querySelector('button.about');

homeButton.addEventListener('click', () => {
    showHome();
})

document.addEventListener('DOMContentLoaded', () => {
    e = new Event('click');
    homeButton.dispatchEvent(e);
})