let content = document.querySelector('#content');

function showAbout() {
    let contentElements = Array.from(content.children);
    for (let element in contentElements) {
        // content.removeChild(typeof element);
        console.log(typeof element)
    }
}

export default showAbout;