btn = document.querySelector('#dom_button'); 
btn.onclick = () => alert("i am dom alert");

el_btn = document.querySelector('.event_listener_btn');
el_btn.addEventListner('click', (Event) => {
    if
    alert('i am triggered by addEventListner function');
});