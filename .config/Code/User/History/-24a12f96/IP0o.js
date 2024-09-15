nama = 'lisa rodri';

function makeUser (name, age) {
    return {
        name: name,
        age: age,
    };
};

let hi = makeUser('larry', 50);

console.log(`name: ${hi.name} \n age: ${hi.age}`);