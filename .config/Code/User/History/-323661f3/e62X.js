function ParentClass (){
    this.name = "parent";
}

ParentClass.prototype.getName = function() {
    return console.log(this.name);
}

class ChildClass extends ParentClass {
    name = "child child";
}

class GChild extends ChildClass {
    name = "Gchild";
}