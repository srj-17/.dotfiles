import project from './project';

const user = (function () {
    let projects = [];
    
    // if todos added at random (outside of projects), they're added to direct todos
    // not implemented as project object because it doesn't make sense doing that. 
    // it doesn't need priority or dueDate because it won't be displayed as project
    let directTodos = [];

    function addProject(name, priority, duedate) {
        let newProject = new project(name, priority, duedate);
        projects.push(newProject);
    };

    function getProjects() {
        return projects;
    }

    return { addProject, 
             addDirectTodo: () => directTodos.addTodo(), 
             getDirectTodos: () => directTodos.getTodos(), 
             getProjects };
}) ();

user.addProject("best world project", 1, "2011-10-1");
user.addDirectTodo("hello", "this is the todo of todods", "2011-10-1", 1, "ok these are notes for this project", ['hello', 'these', 'are', 'things', 'to', 'do'])
console.log(user.getDirectTodos());