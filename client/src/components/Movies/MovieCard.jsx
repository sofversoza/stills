import React from 'react'
import { useNavigate } from 'react-router-dom'
import images from '../../images'
import '../../styles.css'
import { Row, Col } from 'react-bootstrap'


function MovieCard({ props, getProps }) {
  let navigate = useNavigate()
  
  function handleClick(props){
    getProps(props)
    navigate(`/movies/${props.slug}`)
  }
 
  return (
    <div className='mt-4 container-fluid'>
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
           <Col className='no-padding'>  
             <img
                src={images[`${props.image2}`].default}
                alt={props.title}
                height='265px'
                width='510px'
                id='img-div'
                onClick= {()=>{handleClick(props)}}
             />
            </Col>
            <Col className='no-padding'> 
             <img
                src={images[`${props.image3}`].default}
                alt={props.title}
                height='265px'
                width='510px'
                id='img-div'
                onClick= {()=>{handleClick(props)}}
             />
          </Col>   
         </Row>
    </div>
  )
}

export default MovieCard 
