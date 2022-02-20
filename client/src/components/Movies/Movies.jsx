import React, { useState, useEffect } from 'react'
import MovieCard from './MovieCard'


function Movies({movies,getProps}) {
  
     
  // const myMovies = movies.filter((movie) => movie.users.includes({user}))

  const grid = movies.map(item=>{
      return(
        <MovieCard 
        key={item.id}
        props={item}
        getProps={getProps}
    />

      )

  })

  return (
    <div className='grid'>
       {grid}
    </div>
  )
}

export default Movies;