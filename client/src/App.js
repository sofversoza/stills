import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import React, { useState, useEffect } from 'react'
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import Home from './components/Home';
import Movies from './components/Movies/Movies';
import Movie from './components/Movie/Movie';
import LandingPage from './components/LandingPage';
import Login from './components/Login';
import Signup from './components/Signup';
import NavigationBar from './components/NavigationBar';


function App() {
  const [user, setUser] = useState(null)
  const [movies, setMovies] = useState([])
  const [mood, setMood] = useState([])

 

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });

    fetch("/movies").then((r)=>{
      if(r.ok){
        r.json().then((movies)=> setMovies(movies));
      }
    })
  }, []);


  return (
    <Router>
    <>
       <NavigationBar user={user} setUser={setUser} setMood={setMood}/> 
      {user ? (
        <Routes>
          <Route path='/' element={<Home movies={movies} mood={mood}/>} />
        </Routes>
      ): (
        <Routes>
          <Route path='/signup' element={<Signup setUser={setUser} />} />
          <Route path='/login' element={<Login setUser={setUser} setMood={setMood} mood={mood}/>} />
          <Route path='/' element={<Home />} />
          {/* <Route exact path='/' element={<LandingPage />} />
          <Route exact path='/movies' element={<Movies />} />
          <Route exact path='/movies/:slug' element={<Movie />} /> */}

        </Routes>
      )}
      
    </>
    </Router>
  );
}

export default App;





