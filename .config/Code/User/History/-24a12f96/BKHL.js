nama = 'lisa rodriguez';

let user = {
    [nama]: 'this',
    isAdmin: true,
    age: 30,
}

console.log(user.age);

delete user.age;

console.log(user['lisa rodriguez']);

console.log(user.age)