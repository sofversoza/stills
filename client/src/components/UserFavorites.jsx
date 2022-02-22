import React, {useEffect, useState} from 'react'
import Movie from './Movie/Movie'
import images from '../images'
import '../styles.css'
import { Row, Col, Button } from 'react-bootstrap'

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

    const grid =  fav.map((movie) => {
        return(
        <div className="movie-grid" id={movie.id} >
        <Row>
        <Col> 
           <img
               src={images[`${movie.image1}`].default}
               alt={movie.title}
               id="stills"
               height="175px"
               width= "350px"
               onClick= {()=>{handleClick(movie)}}
           />
         </Col>  
          <Col>  
            <img
               src={images[`${movie.image2}`].default}
               alt={movie.title}
               id="stills"
               height="175px"
               width= "350px"
               onClick= {()=>{handleClick(movie)}}
            />
           </Col>
           <Col> 
            <img
               src={images[`${movie.image3}`].default}
               alt={movie.title}
               id="stills"
               height="175px"
               width= "350px"
               onClick= {()=>{handleClick(movie)}}
            />
         </Col>   
        </Row>
        <Button onClick={()=>handleRemove(movie)}>Remove</Button>
        
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
    

    console.log(user.movies)
    return(
    <div>
      {toMovie?<Movie  key={props.id} props={props} user={user} movies={movies} handleClick={handleClick}/>:grid}
    </div>
    
    )
}

export default UserFavorite