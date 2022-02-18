import React, { useState, useEffect } from 'react';
import {useParams} from 'react-router-dom';
import NavigationBar from '../NavigationBar';
import { Image, Container, Row, Col, } from 'react-bootstrap'
import images from '../../images'
import '../../styles.css'


function Movie() {
  let params = useParams();
  const [review, setReview] = useState({})
  const [movie, setMovie] = useState([])


  useEffect(() => {
    fetch(`/movies/${params.slug}`)
    .then(res => res.json())
    .then(res => setMovie(res))
  }, [])


  return (
    <div id='main-div-movie'>
      <NavigationBar />

       <div className='mt-4 container-fluid'>
        <Row >
            <Col>
          <Image 
            src={images[`${movie.image1}`].default}
            alt={movie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <Image 
            src={images[`${movie.image2}`].default}
            alt={movie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <Image 
            src={images[`${movie.image3}`].default}
            alt={movie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          </Row>
        </div>

         <Container id='container-movie-info'>
         <div id='single-movie-info'>
            <h1 className='mt-2 mb-1'>{movie.title}</h1>
            <h3 className='mb-4'>{`(${movie.release_year})`}</h3>
            <h5>Director: {movie.director}</h5>
            <h5>Cinematographer: {movie.cinematographer}</h5>
            <h5>Genre: {movie.genre}</h5>
            <h5>Duration: {movie.duration} mins</h5>
            <h4 className='mt-4 mb-4'>{movie.description}</h4>
            <h6 className='mb-3'>Starring: {movie.starring}</h6>
            <h6>Awards: {movie.awards}</h6>
        </div>
        </Container>
        
    </div>
  )
}

export default Movie