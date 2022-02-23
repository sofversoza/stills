import React from 'react'
import MovieCard from './MovieCard'



function Movies({movies,getProps,user}) {
  
     
  // const myMovies = movies.filter((movie) => movie.users.includes({user}))

  const grid = movies.map(item=>{
      return (
       <MovieCard 
        key={item.id}
        props={item}
        getProps={getProps}
        movies={movies}
        user={user}
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