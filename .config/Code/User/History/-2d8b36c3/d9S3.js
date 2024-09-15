btn = document.querySelector('#dom_button'); 
btn.onclick = () => alert("i am dom alert");

el_btn = document.querySelector('.el_btn');
el_btn.addEventListener('click', (v) => {
    console.log(v);
    v.target.backgroundColor = 'blue';
});

btn_group = document.querySelectorAll('.container > button');

btn_group.forEach(button => {
    btn_group.addEventListener('click', () => {
        console.log(button.id);
    })
});