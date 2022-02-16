import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Button } from 'react-bootstrap';
import Home from './components/Home';
import Login from './components/Login';
import Signup from './components/Signup';


function App() {
  
  return (
    <>
     {/* <Home />    <Login />  <Signup /> */}
  
     <Signup />

      <div className="App">
        {/* <h1>Hi</h1>
        <Button>Test Button</Button> */}
      </div>
    </>
  );
}

export default App;
