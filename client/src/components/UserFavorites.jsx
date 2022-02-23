import React, {useEffect, useState} from 'react'
import Movie from './Movie/Movie'
import MovieCard from './Movies/MovieCard'
import '../styles.css'
import { Button } from 'react-bootstrap'

function UserFavorite({user,movies}){
    const [props, setProps] = useState([])
    const [toMovie, setToMovie] = useState(false)
    const [fav,setFav] =useState([])
    const [taggle, setTaggle]=useState(false)

    useEffect(()=>{
      fetch(`/users/${user.id}`)
      .then(res => res.json())
      .then(user => setFav(user.movies))
    },[])

    const grid =  fav.map((item) => {
        return(
          <div>
          <MovieCard 
              key={item.id}
              props={item}
              movies={movies}
              user={user}
              handleClick={handleClick}   
          />
          <Button onClick={handleClick} variant='warning' className='mt-1 mb-2'> 
              Remove 
          </Button>
        </div>
    )})
   
  
    function handleClick(movie){
    setProps(movie)
    setToMovie(!toMovie)
    }
    function handleRemove(movie){
      const myFav = user.favorites.filter(fav => fav.movie_id === movie.id)[0]
      fetch(`/favorites/${myFav.id}`, { method: "DELETE" })
      const arr = fav.filter(f => f.id !== movie.id)
      setFav(arr)
      setTaggle(!taggle)
    }
    

    return(
    <div>
      {toMovie?<Movie  key={props.id} props={props} user={user} movies={movies} handleClick={handleClick}/>:grid}
    </div>
    
    )
}

export default UserFavorite