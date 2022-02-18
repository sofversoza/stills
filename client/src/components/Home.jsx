import React from 'react'
import { useRef } from 'react';
import NavigationBar from './NavigationBar'


function Home({mood,movies}) {
 const moodMovies = movies.filter((movie)=> mood.includes(movie.genre)) 

  const grid = moodMovies.map(movie => {
    return (
        <div id={movie.id}>
          <h4>{movie.title}</h4>
        </div>
    )
  })
  
  return (
    <>
    <h3>Welocome Back!</h3>
    <p></p>
    {grid}
    </>
  )
}

export default Home;