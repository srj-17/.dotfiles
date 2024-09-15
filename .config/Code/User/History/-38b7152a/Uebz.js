textBox = document.querySelector("input");
  
textBox.addEventListener("keydown", function (event) {
    console.log(`You pressed "${event.key}".`);
});
  