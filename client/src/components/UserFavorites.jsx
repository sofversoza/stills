import React from 'react'
import MovieCard from './Movies/MovieCard'
import { Button } from 'react-bootstrap'

function UserFavorite({ user, getProps }) {
    const grid = user.movies.map(item => {
        return (
          <div>
            <MovieCard 
                key={item.id}
                props={item}
                getProps={getProps}
            />
            <Button onClick={handleClick} variant='warning' className='mt-1 mb-2'> 
                Remove 
            </Button>
          </div>
        )
    })

    function handleClick() {
    // fetch("/reviews/:id", { method: "DELETE" }).then((r) => {
    //     if (r.ok) {
    //         setUser(null);
    //         setMood("")
    //         }
    //     });
    }

    return(
     <div>
        {grid}
     </div>
    )
}

export default UserFavorite