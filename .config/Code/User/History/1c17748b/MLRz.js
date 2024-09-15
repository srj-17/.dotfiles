import { useState } from "react";

const Home = () => {
    let ohBoy = useState("hello, bro");

    const handleClick = () => {
        ohBoy = "hi, bruv"; 
    }

    return ( 
        <div className="home">
            <h2>Homepage</h2>
            <p>{ohBoy}</p>
            <button onClick={() => {handleClick()}}>Click Me</button>
        </div>
     );
}
 
export default Home;