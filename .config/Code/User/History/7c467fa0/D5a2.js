// this is side effect import for our webpack style handlers to catch the css and process it 
// (as described in the webpack.config.js) 
import './styles.css';
import { greeting } from './greeting.js';
import odinImage from "./odin.png";
   
const image = document.createElement("img");
image.src = odinImage;
   
document.body.appendChild(image);
console.log(greeting);