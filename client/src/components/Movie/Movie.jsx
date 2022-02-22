import React, { useEffect, useState } from 'react';
import {  Container, Row, Col,Button, Form } from 'react-bootstrap'
import images from '../../images'
import '../../styles.css'



function Movie({props,movies,user,handleClick}) {
  const userId = user.id
  const movieId = props.id
  const [newReview, setNewReview]=useState("")
  const [newRating, setNewRating]=useState(0)
  const [added,setAdded]= useState(false)
  
  
    const theMovie = movies.filter((movie)=> movie.id === props.id )[0]
    const rating = (theMovie.reviews.reduce((total,next)=> total + next.rating, 0)/theMovie.reviews.length).toFixed(1)
    const review = theMovie.reviews.map((r)=>{
      return(
        <div>
          <h6>{r.comment}</h6>
        </div>             
     )
})

  
 



function handleFavorite(){
  fetch('/favorites',{
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({userId, movieId}),
  })
  setAdded(true)
  // .then((r)=>{
  //   if(r.ok) {
  //     r.json().then((user)=> setUser(user));
  //   }
  // });
}


  function handleSubmit(e){
    e.preventDefault();
    fetch('/reviews',{
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({newReview,userId, movieId,newRating}),
    })
    // .then((r)=>{
    //   if(r.ok) {
    //     r.json().then((user)=> setUser(user));
        
    //   }
  
    // });

  }



  return (
    
    <div id='main-div-movie'>
      

        <div className='mt-4 container-fluid' onClick={handleClick}> 
         <Row >
            <Col>
          <img
            src={images[`${theMovie.image1}`].default}
            alt={theMovie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <img
            src={images[`${theMovie.image2}`].default}
            alt={theMovie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <img
            src={images[`${theMovie.image3}`].default}
            alt={theMovie.title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
         
          </Row>
       </div> 
         
         <Container id='container-movie-info'>
         <div id='single-movie-info'>
            <h1 className='mt-2 mb-1'>{theMovie.title}</h1>
            <button onClick={handleFavorite}>
           {added? "added": "myFav"}
          </button>
          <Form  onSubmit={handleSubmit}>
              <Form.Group className="mb-3">
                <Form.Control 
                 type="text" 
                 placeholder="add my comment"
                 autoComplete='off'
                 value={newReview}
                 onChange={(e) => setNewReview(e.target.value)}
                />
                <Form.Control 
                 type="number" 
                 placeholder="add my rating"
                 autoComplete='off'
                 value={newRating}
                 onChange={(e) => setNewRating(e.target.value)}
                />
              </Form.Group>
              <Button variant='primary' type="submit" className="mt-2">
                      ADD
                  </Button>
           </Form>
            <h3 className='mb-4'>{`(${theMovie.release_year})`}</h3>
            <h5>Director: {theMovie.director}</h5>
            <h5>Cinematographer: {theMovie.cinematographer}</h5>
            <h5>Genre: {theMovie.genre}</h5>
            <h5>Duration: {theMovie.duration} mins</h5>
            <h5>rating: {rating}</h5>
            <h5>Reviews:</h5>
            {review}
            <h4 className='mt-4 mb-4'>{theMovie.description}</h4>   
            <h6 className='mb-3'>Starring: {theMovie.starring}</h6>
            <h6>Awards: {theMovie.awards}</h6>

        </div>
        </Container> 
        
    </div>
  )
}

export default Movie