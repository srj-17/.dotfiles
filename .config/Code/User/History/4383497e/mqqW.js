import menuImg from './assets/img/menu.jpg'

// get the current nodes (since home is already loaded when dom is loaded)
let content = document.querySelector('#content');
let contentLeft = document.querySelector('.content-left');
let middleLine = document.querySelector('.middle-line');
let contentRight = document.querySelector('.content-right');

// things that go in content-left
// menu-header
let menuHeader = document.createElement('div');
menuHeader.classList.toggle('menu-header');
menuHeader.textContent = 'Menu';

// menu-description
let menuDescription = document.createElement('div');
menuDescription.classList.toggle('menu-description');
menuDescription.textContent = 'We provide extensive menu of highly palateable foods and fruits.'

// menu-img
let menImg = document.createElement('div');
menImg.classList.toggle('menu-img');
menImg.src = menuImg;
menImg.alt = 'Menu of the restaurant';

// things that go in content-right
// menu items 
menuItems = document.createElement('div');
menuItems.classList.togg

// extras



function showMenu() {
    // append these new things to contentLeft
    // and the contentRight respectively 
}

export default showMenu;