import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import React, { useState, useEffect } from 'react'
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import Home from './components/Home';
import Login from './components/Login';
import Signup from './components/Signup';
import NavigationBar from './components/NavigationBar';


function App() {
  const [user, setUser] = useState(null)
  const [movies, setMovies] = useState([])

 

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);


  return (
    <Router>
    <>
      <NavigationBar user={user} setUser={setUser}/>
      {user ? (
        <Routes>
          <Route path='/' element={<Home movies={movies}/>} />
        </Routes>
      ): (
        <Routes>
          <Route path='/signup' element={<Signup setUser={setUser} />} />
          <Route path='/login' element={<Login setUser={setUser} />} />
          <Route path='/' element={<Home />} />
        </Routes>
      )}
    </>
    </Router>
  );
}

export default App;





