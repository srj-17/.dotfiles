class Todo {
    constructor(title, description, duedate, priority, notes, checklist) {
        // todo should be created even if title is not given, project should check for title
        this.title = title;
        this.description = description;

        // have to check if valid duedate
        this.duedate = duedate ? new Date(duedate) : null;

        this.priority = priority;
        this.notes = notes;
        this.checklist = checklist;

        // status stores if todo is done
        this.status = false;
    }
    
    toggleStatus() {
       this.status = this.status ? false : true; 
    }   

    edit(title, description, duedate, priority, notes, checklist) {
        const index = id;
        const newTodo = new todo(title, description, duedate, priority, notes, checklist, id);
        this.todoList.splice()
    }
}

export default Todo;