nama = 'lisa rodri';

function makeUser (name, age) {
    return {
        name,
        age,
    };
};

let hi = makeUser('larry', 50);

console.log(`name: ${hi.name} \nage: ${hi.age}`);