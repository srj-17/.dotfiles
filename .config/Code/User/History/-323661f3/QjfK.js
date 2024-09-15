function ParentClass (){
    this.name = "parent";
}

ParentClass.prototype.getName = function() {
    return console.log(this.name);
}

class ChildClass extends ParentClass {
    name = "child child";
    getDate = () => {
        console.log('date date');
    }
}

class GChild extends ChildClass {
    name = "Gchild";
}