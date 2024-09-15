import aboutImg from './assets/img/about.jpg';

// get the current nodes (since home is already loaded when dom is loaded)
let content = document.querySelector('#content');
let contentLeft = document.createElement('div');
contentLeft.classList.toggle('content-left');
let middleLine = document.createElement('div');
middleLine.classList.toggle('middle-line');
let aboutContentContainer = document.createElement('div');
aboutContentContainer.classList.toggle('about-content-container');

// things to fill in contentleft
// about-header
let aboutHeader = document.createElement('div');
aboutHeader.classList.toggle('about-header');
aboutHeader.textContent = 'About';

// about image
let abtImg = document.createElement('div');
abtImg.classList.toggle('about-img');
let img = document.createElement('img');
img.src = aboutImg;
img.alt = 'About page image, nothing special';
abtImg.appendChild(img);

// middleline shouldn't be changed

// things to fill in aboutContentContainer
let aboutContent = document.createElement('div');
aboutContent.classList.toggle('about-content');
abt

function showAbout() {
    content.removeChildren();
    content.appendChild(contentLeft);
    content.appendChild(middleLine);
    content.appendChild(aboutContentContainer);
}

export default showAbout;