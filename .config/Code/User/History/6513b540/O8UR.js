const findTheOldest = function(people) {
    const currentDate = new Date();
    const currentYear = currentDate.getFullYear();
    return people.reduce( (oldest, person) => {
        let oldestAge = oldest.yearOfBirth - oldest.yearOfDeath || currentYear;
        let personAge = person.yearOfBirth - person.yearOfDeath || currentYear;
        (personAge > oldestAge) ? person : oldest;
    });
};

// Do not edit below this line
// module.exports = findTheOldest;
