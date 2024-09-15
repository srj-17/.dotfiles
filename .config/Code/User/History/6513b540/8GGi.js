const findTheOldest = function(people) {
    currentDate = new Date();
    return people.reduce( (oldest, person) => {
        return person.yearOfBirth - person.yearOfDeath || currentDate.getFullYear()}
};

// Do not edit below this line
module.exports = findTheOldest;
