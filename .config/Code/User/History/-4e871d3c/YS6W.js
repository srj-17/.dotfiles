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
// middleline shouldn't be changed
// things to fill in contentRight

function showAbout() {
    // append these new things to contentLeft
    // and the contentRight respectively 
}

export default showAbout;