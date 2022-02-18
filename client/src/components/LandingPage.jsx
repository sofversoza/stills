import React from 'react'
import Login from './Login'
import {Container, Row, Col} from 'react-bootstrap'
import Signup from './Signup'

function LandingPage() {
  return (
    <div>
      <Container>
         <Login />
      </Container>
    </div>
  )
}

export default LandingPage