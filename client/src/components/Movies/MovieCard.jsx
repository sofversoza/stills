import React from 'react'
import { useNavigate } from 'react-router-dom'
import images from '../../images'
import '../../styles.css'
import { Row, Col } from 'react-bootstrap'



function MovieCard({ props,getProps }) {
  let navigate = useNavigate()
  function handleClick(props){
    getProps(props)
    navigate(`/movies/${props.slug}`)
   
  }
 
  return (
    <div className="movie-grid"  >
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
    </div>
  )
}

export default MovieCard 
