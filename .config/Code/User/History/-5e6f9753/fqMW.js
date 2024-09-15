const clickmeButton = document.querySelector('.clickme');
const cancelButton = document.querySelector('.cancel');
const submitButton = document.querySelector('.submit');

// the actual dialog box
const dialog = document.querySelector('.fav-dialog')

function openCheck(dialog) {
    if (dialog.open) {
        console.log("Dialog open");
    } else {
        console.log("Dialog closed");
    }
}
  
clickmeButton.addEventListener('click', (event) => {
    
}) 

body.showModal()