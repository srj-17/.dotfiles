nama = prompt('What should this be?');

let user = {
    [nama]: 'this',
    isAdmin: true,
    age: 30,
}

console.log(user.age);

delete user.age;

console.log(user[nama]);

console.log(user.age)