import React from 'react'
import images from '../images'
import { Row, Col, Container } from 'react-bootstrap'

function UserRatings({ user, movies }) {
 const grid = user.reviews.map(r => {
    const movie = movies.filter((m) => m.id === r.movie_id)[0]
        return (
            <div id = {r.id} className='mt-4 container-fluid'>
                <Row>
                    <Col className='no-padding'>
                      <img 
                        src={images[`${movie.image1}`].default}
                        alt={movie.title}
                        height='265px'
                        width='500px'
                        id='img-div'
                      />
                    </Col>
                    <Col className='no-padding'>
                      <img 
                        src={images[`${movie.image2}`].default}
                        alt={movie.title}
                        height='265px'
                        width='500px'
                        id='img-div'
                      />
                    </Col>
                    <Col className='no-padding'>
                      <img 
                        src={images[`${movie.image3}`].default}
                        alt={movie.title}
                        height='265px'
                        width='500px'
                        id='img-div'
                      />
                    </Col>
                </Row>
                <div id='single-movie-info' className='rating-info'>
                    <h3>{movie.title}</h3>
                    <h5>Rating: {r.rating}</h5>
                    <h5>Comments: {r.comment}</h5>
                </div>
            </div>
        )
    })

 return (
  <div>
    {grid}
  </div>
 )

}

export default UserRatings;
