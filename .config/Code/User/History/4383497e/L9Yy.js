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
img = document.createElement('img');
img.src = menuImg;
img.alt = 'Menu of the restaurant';
menImg.appendChild(img);

// things that go in content-right
// menu items 
let menuItems = document.createElement('div');
menuItems.classList.toggle('menu-items');

// menu-items has menu-items-header 
let menuItemsHeader = document.createElement('div');
menuItemsHeader.classList.toggle('menu-items-header');

// and menu-list
let menuList = document.createElement('ul');
menuList.classList.toggle('menu-list');

// menuList can have many items:
let listItems = [
    'Momos',
    'Chowmen',
    'Milkshake',
    'Cutting Chaye',
    'Coffee of highest Caliber',
    'Katti Roll',
    'Sakeua',
    'Laddu',
]

for (let item of listItems) {
    let listItem = document.createElement('li');
    listItem.classList.toggle('class-list');
    listItem.textContent = item;
    menuList.appendChild(listItem);
}

// lastly, we append them to the menu-items
menuItems.appendChild(menuItemsHeader);
menuItems.appendChild(menuList);

// extras
// we have extras, but we create new `extras` and not modify the old ones because we don't want the extras to change immediately
// as they encounter this script
// and as modules are scoped locally, this extras object is different from the extras object created in other modules
let extra = document.createElement('div');
extra.classList.toggle('extra');

// extra has extraHeader
let extraHeader = document.createElement('extra-header');
extraHeader.classList.toggle('extra-header');
extraHeader.textContent = 'Extra Menu for Extra You';

// and extraContent
let extraContent = document.createElement('div');
extra.classList.toggle('extra-content');
extraContent.textContent = 'Extra things that you might want, we can prepare that for you given enought time.'

// now we just append them
extra.appendChild(extraHeader);
extra.appendChild(extraContent);

function showMenu() {
    content.replaceChild();
}

export default showMenu;