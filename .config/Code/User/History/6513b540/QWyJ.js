const findTheOldest = function(people) {
    const currentDate = new Date();
    return people.reduce( (oldest, person) => {
        let personAge = person.yearOfBirth - person.yearOfDeath || currentDate.getFullYear();
        if (personAge > oldest. 
    }
};

// Do not edit below this line
module.exports = findTheOldest;
