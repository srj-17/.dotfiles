import './App.css';
import navbar from './navbar';

const title = 'hello! Welcome to the new blog!';
const likes = 50;

function App() {
  return (
    <div className="App">
      <h1>{title}</h1>
      <p>Likes = {likes}</p>
    </div>
  );
}

export default App;