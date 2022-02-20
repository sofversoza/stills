import React, { useState } from 'react';
import {  Container, Row, Col,Button, Form } from 'react-bootstrap'
import images from '../../images'
import '../../styles.css'



function Movie({props,movies,user}) {
  // const [review, setReview] = useState({})
  // const [movie, setMovie] = useState([])
  // useEffect(() => {
  //   fetch(`/movies/${props.slug}`)
  //   .then(res => res.json())
  //   .then(res => setMovie(res))
  // }, [])
  const [newReview, setNewReview]=useState("")
  const [newRating, setNewRating]=useState(0)
  const [added,setAdded]= useState(false)
  const theMovie = movies.filter((movie)=> movie.id === props.id )
  const rating = (theMovie[0].reviews.reduce((total,next)=> total + next.rating, 0)/theMovie[0].reviews.length).toFixed(1)
  const review = theMovie[0].reviews.map((r)=>{
    return(
      <div>
      <h6>{r.comment}</h6>
      </div>
    )
  })
  const userId = user.id
  const movieId = props.id

function handleClick(){
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
      

        <div className='mt-4 container-fluid'> 
         <Row >
            <Col>
          <img
            src={images[`${theMovie[0].image1}`].default}
            alt={theMovie[0].title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <img
            src={images[`${theMovie[0].image2}`].default}
            alt={theMovie[0].title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
          <Col>
          <img
            src={images[`${theMovie[0].image3}`].default}
            alt={theMovie[0].title}
            height='265px'
            width='510px'
            id='img-div'
          />
          </Col>
         
          </Row>
       </div> 
         
         <Container id='container-movie-info'>
         <div id='single-movie-info'>
            <h1 className='mt-2 mb-1'>{theMovie[0].title}</h1>
            <button onClick={handleClick}>
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
            <h3 className='mb-4'>{`(${theMovie[0].release_year})`}</h3>
            <h5>Director: {theMovie[0].director}</h5>
            <h5>Cinematographer: {theMovie[0].cinematographer}</h5>
            <h5>Genre: {theMovie[0].genre}</h5>
            <h5>Duration: {theMovie[0].duration} mins</h5>
            <h5>rating: {rating}</h5>
            <h5>Reviews:</h5>
            {review}
            <h4 className='mt-4 mb-4'>{theMovie[0].description}</h4>   
            <h6 className='mb-3'>Starring: {theMovie[0].starring}</h6>
            <h6>Awards: {theMovie[0].awards}</h6>

        </div>
        </Container> 
        
    </div>
  )
}

export default Movie