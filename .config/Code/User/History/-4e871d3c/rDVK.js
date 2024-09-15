let content = document.querySelector('#content');

function showAbout() {
    let contentElements = Array.from(content.children);
    for (let element in contentElements) {
        content.removeChild(element);
    }
}

export default showAbout;