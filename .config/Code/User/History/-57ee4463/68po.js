class Todo {
    constructor(title, description, duedate, priority, notes, checklist) {
        this.title = title;
        this.description = description;
        // have to check if valid duedate
        this.duedate = new Date(duedate);
        
    }
}