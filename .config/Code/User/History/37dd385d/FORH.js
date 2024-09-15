// for whatever reason, these methods don't work, you have to export from the end of the file, 
// else, it shows error in the 
// either method of exporting is fine (named export)
// export const greeting = "Hello, Odinite!";
// export const farewell = "Bye bye, Odinite!";

let greeting = "Hello, Odinite!";
const farewell = "Bye bye, Odinite!";

export { greeting };
export default farewell;