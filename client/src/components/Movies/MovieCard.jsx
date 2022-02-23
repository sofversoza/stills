import React, { useState }from 'react'
import images from '../../images'
import '../../styles.css'
import { Row, Col } from 'react-bootstrap'
import Movie from '../Movie/Movie'



function MovieCard({ props, user, movies}) {
 const [toMovie, setToMovie] = useState(false)

 
 
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
      <Col className='no-padding'> 
      
         <img
             src={images[`${props.image1}`].default}
             alt={props.title}
             height='265px'
             width='500px'
             id='img-div'
             onClick= {()=>{handleClick(props)}}
         />
      
       </Col>  
        <Col>  
       
          <img
             src={images[`${props.image2}`].default}
             alt={props.title}
             height='265px'
                width='500px'
                id='img-div'
             onClick= {()=>{handleClick(props)}}
          />
      
         </Col>
         <Col> 
      
          <img
             src={images[`${props.image3}`].default}
             alt={props.title}
             height='265px'
                width='500px'
                id='img-div'
             onClick= {()=>{handleClick(props)}}
          />
     
       </Col>   
      </Row>
      }
        
    </div>
  )
}

export default MovieCard 
