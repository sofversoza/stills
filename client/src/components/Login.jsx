import React from 'react'
import '../styles.css'
import { Button, Form, Container } from 'react-bootstrap'


function Login() {
  return (
    <div id='form-font'>
       <Container className="container">
        <Form id='login-form'>
          <Form.Label id='form-label'>Please Login</Form.Label>
            <Form.Group className="mb-3">
              <Form.Control type="email" placeholder="Email Address"/>
              <Form.Text className="text-muted" style={{fontSize:'11px'}}>
                We'll never share your email with anyone else
              </Form.Text>
            </Form.Group>
            <Form.Group className="mb-4">
              <Form.Control type="password" placeholder="Password"/>
            </Form.Group>
            <Form.Group>
              <Form.Text>
                What are you in the mood for today?
              </Form.Text>
              <Form.Check type="checkbox" label="Contemporary" style={{fontSize:'13px', marginTop: '5px'}}/>
              <Form.Check type="checkbox" label="Drama" style={{fontSize:'13px'}}/>
              <Form.Check type="checkbox" label="Horror/Thriller" style={{fontSize:'13px'}}/>
              <Form.Check type="checkbox" label="Romance" style={{fontSize:'13px'}}/>
              <Form.Check type="checkbox" label="Fantasy/Sci-Fi" style={{fontSize:'13px'}}/>
              <Form.Check type="checkbox" label="Comedy/Family" style={{fontSize:'13px'}}/>
            </Form.Group>
            <Button variant='primary' type="submit" className="mt-2">
                Login
            </Button>
        </Form>
       </Container> 
    </div>
  )
}

export default Login