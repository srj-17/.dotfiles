function createUser (name) {
    const discordName = "@" + name;
  
    let reputation = 0;
    const getReputation = () => reputation;
    const giveReputation = () => reputation++;
  
    return { name, discordName, getReputation, giveReputation };
  }
  
  const josh = createUser("josh");
  josh.giveReputation();
  josh.giveReputation();
  
  const ram = createUser("josh");
  ram.giveReputation();
  ram.giveReputation();
  
  
  console.log({
    discordName: josh.discordName,
    reputation: josh.getReputation()
  });
  console.log(josh.reputation);
  // logs { discordName: "@josh", reputation: 2 }
  