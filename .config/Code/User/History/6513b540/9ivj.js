const findTheOldest = function(people) {
    return people.reduce( (oldest, person) => {
      return person.yearOfBirth - person.yearOfDeath || )
    }
};

// Do not edit below this line
module.exports = findTheOldest;
