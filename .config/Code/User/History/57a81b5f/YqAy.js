import './style.css';
import showHome from './home'

console.log("hola, bola")
homeButton = document.querySelector('button.home');
homeButton.addEventListener('click', () => {
    console.log('hello')
    showHome();
})