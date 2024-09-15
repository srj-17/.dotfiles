function ParentClass (){
    this.name = "parent";
}

ParentClass.prototype.getName = function() {
    return console.log(this.name);
}

class ChildClass extends ParentClass {

} 