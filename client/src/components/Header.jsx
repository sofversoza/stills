import React from 'react'
import '../styles.css'
import { Form, Button, Row, Col } from 'react-bootstrap'
import {Link} from 'react-router-dom'

function Header({ user, setUser }) {

    function handleLogout() {
        fetch("/logout", { method: "DELETE" }).then((r) => {
          if (r.ok) {
            setUser(null);
          }
        });
      }

  return (
    <div className='header-container'>
      <div>
         <Form>
            <Form.Check 
                type="switch"
                id="custom-switch"
                label="Dark Mode"
            />
         </Form>
         {user ? (
           <Button size='sm' variant='light' onClick={handleLogout}>
            Logout
           </Button>
         ) : (
         <>
          <Link to='/signup'>Sign up</Link>
          <br></br>
          <Link to="/login">Login</Link>
         </>
        )}
      </div> 
    </div>

   
  //   <div>
  //     <Link to="/">Home</Link>
  //   </div>

  //   <div>
  //     {user ? (
  //       <button onClick={handleLogoutClick}>Logout</button>
  //     ) : (
  //       <>
  //         <Link to="/signup">Signup</Link>
  //         <Link to="/login">Login</Link>
  //       </>
  //     )}
  //   </div>
  )
}

export default Header






