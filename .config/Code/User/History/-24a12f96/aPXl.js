nama = 'lisa rodri';

function makeUser (name, age) {
    return {
        name,
        age,
    };
};

a = makeUser('Sarina', 43);

console.log(!(a.age === undefined));