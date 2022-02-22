import React, {useEffect, useState}from 'react'
import { useNavigate } from 'react-router-dom'
import images from '../../images'
import '../../styles.css'
import { Row, Col } from 'react-bootstrap'
import Movie from '../Movie/Movie'



function MovieCard({ props, user, movies}) {
 const [toMovie, setToMovie] = useState(false)

  // let navigate = useNavigate()
 
  function handleClick(){
    // getProps(props)
    setToMovie(!toMovie)
    // navigate(`/movies/${props.slug}`)
  }
  


  return (
    <div className="movie-grid"  >
      {toMovie?
      <div>
      <Movie  key={props.id} props={props} user={user} movies={movies} handleClick={handleClick}/>
      </div>:
      <Row>
      <Col> 
       {/* <Link to={`/movies/${props.slug}`}> */}
         <img
             src={images[`${props.image1}`].default}
             alt={props.title}
             id="stills"
             height="175px"
             width= "350px"
             onClick= {()=>{handleClick(props)}}
         />
        {/* </Link> */}
       </Col>  
        <Col>  
        {/* <Link to={`/movies/${props.slug}`}> */}
          <img
             src={images[`${props.image2}`].default}
             alt={props.title}
             id="stills"
             height="175px"
             width= "350px"
             onClick= {()=>{handleClick(props)}}
          />
         {/* </Link> */}
         </Col>
         <Col> 
         {/* <Link to={`/movies/${props.slug}`}> */}
          <img
             src={images[`${props.image3}`].default}
             alt={props.title}
             id="stills"
             height="175px"
             width= "350px"
             onClick= {()=>{handleClick(props)}}
          />
        {/* </Link> */}
       </Col>   
      </Row>
      }
        
    </div>
  )
}

export default MovieCard 
