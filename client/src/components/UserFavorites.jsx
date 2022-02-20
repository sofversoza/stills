import React from 'react'
import MovieCard from './Movies/MovieCard'


function UserFavorite({user, getProps}){
    const grid = user.movies.map(item => {
        return (
            <div>
            <MovieCard 
                key={item.id}
                props={item}
                getProps={getProps}
            />
            <button onClick={handleClick}> remove </button>
            </div>
            
        )
     
    })
    function handleClick(){
    
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