btn = document.querySelector('#dom_button'); 
btn.onclick = () => alert("i am dom alert");

el_btn = document.querySelector('.el_btn');
el_btn.addEventListener('click', (Event) => {
    if (Event.type == 'click') {    
        alert('i am triggered by addEventListener function');
    }
});