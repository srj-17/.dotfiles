const findTheOldest = function(people) {
    const currentDate = new Date();
    return people.reduce( (oldest, person) => {
        let oldestAge = oldest.yearOfBirth - oldest.yearOfDeath || currentDate.getFullYear();
        let personAge = person.yearOfBirth - person.yearOfDeath || currentDate.getFullYear();
        if (personAge > oldestAge) return person;
    });
};

// Do not edit below this line
module.exports = findTheOldest;
