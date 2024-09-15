import './style.css';
import showHome from './home'

console.log("hola, bola")
homeButton = document.querySelector('.home.header-btn');
homeButton.addEventListener('click', () => {
    showHome();
})