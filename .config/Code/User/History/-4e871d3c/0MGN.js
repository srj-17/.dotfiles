let content = document.querySelector('#content');

function showAbout() {
    let contentElements = Array.from(content.children);
    for (let element of contentElements) {
        content.removeChild(element);    
    }
}

export default showAbout;