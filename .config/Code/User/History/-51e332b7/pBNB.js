body = document.querySelector('body');

p = document.createElement('p');
p.style.color = 'red';
p.textContent = 'Hey! I\'m red!'
body.appendChild(p);

h3 = document.createElement('h3');
h3.textContent = 'I\'m a blue h3';
h3.color = 'blue'

// creation
div = document.createElement('div');
h1 = document.createElement('h1');
div_p = document.createElement('p');

// assignment
h1.textContent = 'I\'m in a div';
div_p.textContent = 'ME TOO!';

// append
div.appendChild(h1);
div.appendChild(div_p);
body.appendChild(div);