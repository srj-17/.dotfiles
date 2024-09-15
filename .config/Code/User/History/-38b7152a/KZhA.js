textBox = document.querySelector("input");
  
textBox.addEventListener("keydown", (event) => {
    console.log(`You pressed "${event.key}".`);
});
  