class Todo {
    constructor(title, description, duedate, priority, notes, checklist) {
        // todo should be created even if title is not given, project is check for title
        this.title = title;
        this.description = description;

        // have to check if valid duedate
        this.duedate = duedate ? new Date(duedate) : null;

        this.priority = priority;
        this.notes = notes;
        this.checklist = checklist;
        this.status = false;
    }
    
    toggleStatus() {
       this.status = this.status ? false : true; 
    }   

    edit(property, value) {
        try (property in this) {
            property = value;
        } else {
            let noValue = new ReferenceError("")
        }
    }
}

export default Todo;