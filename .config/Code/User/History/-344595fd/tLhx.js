import './App.css';
import Navbar from './Navbar';
import Home from './Home';

const title = 'hello! Welcome to the new blog!';
const likes = 50;

function App() {
  return (
    <div className="App">
      <Navbar /> 
      <Home />
    </div>
  );
}

export default App;
