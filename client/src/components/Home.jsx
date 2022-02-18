import React from 'react'
import { useRef } from 'react';
import NavigationBar from './NavigationBar'


function Home({movies,setUser}) {

  function handleLogout() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }
  
  return (

    <>
   
    
    </>
  )
}

export default Home;