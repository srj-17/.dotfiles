import './App.css';
import Navbar from './navbar';

const title = 'hello! Welcome to the new blog!';
const likes = 50;

function App() {
  return (
    <div className="App">
      <Navbar /> 
      <div className="content">
        <h1>{title}</h1>
        <p>Likes = {likes}</p>
      </div>
    </div>
  );
}

export default App;
