import React, { useState } from 'react'
import Login from './Login'
import {Container, Row, Col} from 'react-bootstrap'
import Signup from './Signup'

function LandingPage({setUser}) {
  return (
    <div>
      <Container className="form-container">
         <Login setUser= {setUser} />
      </Container>
    </div>
  )
}

export default LandingPage