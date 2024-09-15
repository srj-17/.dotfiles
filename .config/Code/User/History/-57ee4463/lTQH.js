class Todo {
    constructor(title, description, duedate, priority, notes, checklist) {
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
}

export default Todo;