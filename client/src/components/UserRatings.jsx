import React, {useState} from 'react'
import images from '../images'

function UserRatings({user,movies}){
const [reviews, setReviews]= useState(user.reviews)
  
const grid = reviews.map(r=>{
    const movie=movies.filter((m)=> m.id === r.movie_id)[0]
        return(
            <div id= {r.id}>
                <img 
                src={images[`${movie.image1}`].default}
                alt={movie.title}
                height="175px"
                width= "350px"
                />
                <h3>{movie.title}</h3>
                <h4>rating:{r.rating}</h4>
                <h5>comment:{r.comment}</h5>
            </div>
        )
    })

return(
<div>
    {grid}
</div>
)

}

export default UserRatings;
