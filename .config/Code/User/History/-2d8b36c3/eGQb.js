btn = document.querySelector('#dom_button'); 
btn.onclick = () => alert("i am dom alert");

el_btn = document.querySelector('.el_btn');
el_btn.addEventListener('click', (v) => {
    console.log(v);
});