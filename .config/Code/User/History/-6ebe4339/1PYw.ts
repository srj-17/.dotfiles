interface User {
    name: string;
    id: number;
}
   
class UserAccount {
    name: string;
    id: number;
   
    constructor(name: string, id: number) {
      this.name = name;
      this.id = id;
    }
}
   
const user: User = new UserAccount("Murphy", 1);
// user object with the interface User

console.log(`${user.name}, ${user}`);

export{}