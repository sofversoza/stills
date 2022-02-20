import React, { useState, useEffect } from 'react'
import MovieCard from './Movies/MovieCard'


function UserAccountPage({movies,getProps,user}) {
    // useEffect(()=>{
    //     movies.map((movie)=>{ return console.log(movie.users)})
    // },[])
    
  const myMovies = movies.filter((movie) => movie.users.includes({user}))

  const grid = myMovies.map(item=>{
      return(
        <MovieCard 
        key={item.id}
        props={item}
        getProps={getProps}
    />)

  })

  return (
    <div className='grid'>
     {grid}
    </div>
  )
}

export default UserAccountPage;