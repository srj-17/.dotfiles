function createUser (name) {
    const discordName = "@" + name;
  
    let reputation = 0;
    const getReputation = () => reputation;
    const giveReputation = () => reputation++;
  
    // getReputation and giveReputation are not references to the functions but references
    // to copy of the functions (function objects)
    return { name, discordName, getReputation, giveReputation };
    // we don't return reputation variable on the object, 
    // it can only be accessed through the functions --- thus its private
    // THIS IS ONE USE OF CLOSURES 
    // PRIVATE VARIABLES   
  }
  
  const josh = createUser("josh");
  josh.giveReputation();
  josh.giveReputation();
  
  const ram = createUser("ram");
  ram.giveReputation();
  
  console.log({
    discordName: josh.discordName,
    reputation: josh.getReputation()
  });

  console.log({
    discordName: ram.discordName,
    reputation: ram.getReputation()
  });

  console.log(josh.reputation);
  // logs { discordName: "@josh", reputation: 2 }
  

function createPlayer(name, level) {
    const {getReputation, giveReputation} = createUser(name);

    const increaseLevel = () => level++;
    const getLevel = () => level;
    return {name, getReputation, giveReputation, increaseLevel, getLevel};
}

player = createPlayer(ram, 20);
player.increaseLevel();
console.log(player.getLevel());

// or you could do
function createTeacher(name, salary) {
    const user = createUser(name);
    const increaseSalary = () => (salary = salary + 1000);
    const getSalary = () => salary;
    return Object.assign({}, user, {increaseSalary, getSalary});
}

teacher = createTeacher("Mrsmith", 5000);
teacher.increaseSalary();
console.log(teacher);
console.log(teacher.getSalary());


