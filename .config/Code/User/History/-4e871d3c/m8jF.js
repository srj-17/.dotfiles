let content = document.querySelector('#content');

function showAbout() {
    let contentElements = Array.from(content.children);
    console.log(contentElements); 
}

export default showAbout;