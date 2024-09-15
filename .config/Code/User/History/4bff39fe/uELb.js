import resImg from "./restro-pic.jpg";

// create nodes
// left content
let contentLeft = document.createElement('div');
contentLeft.classList.toggle('content-left');

// for restaurant name
let restroNameContainer = document.createElement('div');
restroNameContainer.classList.toggle('restaurant-name-container');
let restroName = document.createElement('div');
restroName.classList.toggle('restaurant-name');
restroName.textContent = 'My Restro';

// for restaurant guests content
let guests = document.createElement('div');
// guests title
guests.classList.toggle('guests');
let guestsTitle = document.createElement('div');
guestsTitle.classList.toggle('guests-title');
guestsTitle.textContent = "Welcome to our exclusive club of famous guests";
// restro-pic
let restroPic = document.createElement('div');
restroPic.classList.toggle('restro-pic');
image = document.createElement('img');
image.src = resImg;
image.alt = "Image of the restaurant";
image.style.cssText = "width: 200; height: auto";

// description
let description = document.createElement('div');
description.classList.toggle('description');
description.textContent = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur quae dignissimos officia aliquam! Sit, temporibus illum. Error voluptatibus deserunt dolorem!'

// middle-line
middleLine = document.createElement('div');
middleLine.classList.toggle('middle-line');

// right content
contentRight = document.createElement('div');
contentRight.classList.toggle('content-right');

// services
services = document.createElement('div');
services.classList.toggle('services');

// service-header
serviceHeader = document.createElement('div');
serviceHeader.classList.toggle('service-header');
serviceHeader.textContent = 'Our Services';

// service-description
serviceDescription = document.createElement('div');
serviceDescription.classList.toggle('service-description');
serviceDescription.textContent = 'We provide mouth-watering (pun-intended) services, so come at your own risk.';

// service-list
serviceList = document.createElement('ul');
serviceList.classList.toggle('service-list');
// for items on list
listItems = [
    'Sleeping Services',
    'Sauna',
    'Bathing',
    'Eating',
    'Swmming-pool',
    'Bar',
    'Lounge',
    'Pirate Area',
]

let serviceListItems = []
for (item of listItems) {
    let listItem = document.createElement('li');
    listItem.classList.toggle('class-list');
    serviceListItems.push(item);
}

// extra
extra = document.createElement('div');
extra.classList.toggle('extra');

// extra-header
extraHeader = document.createElement('div');
extraHeader.classList.toggle('extra-header');

// extra-content
extraContent = document.createElement('div');
extraContent.classList.toggle('extra-content');