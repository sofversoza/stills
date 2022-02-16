import React from 'react'
import '../styles.css'
import { Button, Form, Container, Row, Col } from 'react-bootstrap'


function Signup() {
  return (
    <div id='form-font'>
      <Container className="container">
        <Form id='signup-form'>
          <Form.Label id='form-label'>Create an account</Form.Label>
          <Row className='mb-3'>
            <Form.Label>Fullname</Form.Label>
            <Form.Group as={Col}>
              <Form.Control type="firstname" placeholder="First name" />
            </Form.Group>
            <Form.Group as={Col}>
              <Form.Control type="lastname" placeholder="Last name" />
            </Form.Group>
          </Row>
          <Form.Label>Email</Form.Label>
          <Form.Group className='mb-3'>
            <Form.Control type="email" placeholder="Email Address" />
          </Form.Group>
          <Form.Label>Password</Form.Label>
          <Form.Group className='mb-3'>
            <Form.Control type="password" placeholder="Password" />
          </Form.Group>
          <Button variant='primary' type="submit" className="mt-2">
            Sign up
          </Button>
        </Form>
      </Container>
    </div>
  )
}

export default Signup