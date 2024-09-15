function ParentClass (){
    this.name = "parent";
}

ParentClass.prototype.getName() {
    return console.log(this.name);
}

class ChildClass extends ParentClass {

} 