import React, { useState, useEffect } from 'react'
import MovieCard from './MovieCard'
import NavigationBar from '../NavigationBar'

function Movies() {
  const [movies, setMovies] = useState([])

  useEffect(() => {
      fetch("/movies")
      .then(res => res.json())
      .then(movies => setMovies(movies))
  }, [])

  const grid = movies.map(item => {
    return (
        <MovieCard 
            key={item.id}
            props={item}
        />
    )
  })

  return (
    <div className='grid'>
      <NavigationBar />
       {grid}
    </div>
  )
}

export default Movies;