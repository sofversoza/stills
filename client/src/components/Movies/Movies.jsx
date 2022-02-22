import React from 'react'
import MovieCard from './MovieCard'


function Movies({ movies, getProps }) {
  const grid = movies.map(item=>{
      return (
       <MovieCard 
        key={item.id}
        props={item}
        getProps={getProps}
       /> 
      )
  })

  return (
    <div className='mt-4 container-fluid mb-4'>
      {grid}
    </div>
  )
}

export default Movies;