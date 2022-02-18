import React from 'react'


function UserFavorite({user}){
    const movies = user.movies
    const grid = movies.map(item => {
        return (
            <div id ={item.id}>
                <h1>{item.title} </h1>
                <p>{item.description}</p>
            </div>
        )
    })

    return(
     <div>
        {grid}
     </div>
    
    )
}

export default UserFavorite