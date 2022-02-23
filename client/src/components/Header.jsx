import React, { useState } from 'react'
import { useNavigate } from "react-router-dom";
import '../styles.css'
import { Form, Button, Row, Col } from 'react-bootstrap'
import { Link } from 'react-router-dom'

function Header({ user, setUser, setMood }) {
  let navigate = useNavigate();

  function handleLogout() {
    navigate("/")
      fetch("/logout", { method: "DELETE" }).then((r) => {
        if (r.ok) {
          setUser(null);
          setMood("")
        }
      });
  }

  return (
    <div className='header-container'>
      <div>
         {/* <Form>
            <Form.Check 
              type="switch"
              id="custom-switch"
              label="Dark Mode"
            />
         </Form> */}
         {user ? (
           <>
           <h4>Welcome, {user.username} !</h4>{'  '}
           <Button size='sm' variant='light' onClick={handleLogout}>
            Logout
           </Button>
           </>
         ) : (
         <>
          <Link to='/signup' style={{ textDecoration: 'none', fontSize: 16 }}>Sign up</Link>
          <br></br>
          <Link to="/" style={{ textDecoration: 'none', fontSize: 16 }}>Login</Link>
         </>
        )}
      </div> 
    </div>
  )
}

export default Header






