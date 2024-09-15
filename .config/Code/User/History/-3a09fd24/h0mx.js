function createUser (name) {
    const discordName = "@" + name;
  
    let reputation = 0;
    const getReputation = () => reputation;
    const giveReputation = () => reputation++;
  
    // getReputation and giveReputation are not references to the functions but references
    // to copy of the functions (function objects)
    return { name, discordName, getReputation, giveReputation };
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
  