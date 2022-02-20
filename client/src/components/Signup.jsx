import React, {useState} from 'react'
import '../styles.css'
import { Button, Form, Container, Row, Col } from 'react-bootstrap'


function Signup({ setUser,user }) {
  const [fullname, setFullname] = useState("")
  const [email,setEmail] = useState("") 
  const [password, setPassword] = useState("")
  const [passwordConfirmation, setPasswordConfirmation] = useState("");
  


  function handleSubmit(e) {
    e.preventDefault();
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        full_name: fullname,
        email,
        password,
        password_confirmation: passwordConfirmation,
      }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user)
        );
      }
    });
  }

  return (
    <div id='form-font'>
      <Container className="container">
        <Form id='signup-form' onSubmit={handleSubmit}>
          <Form.Label id='form-label'>Create an account</Form.Label>
          <br></br>
            <Form.Label>Fullname</Form.Label>
            <Form.Group className='mb-3'>
                <Form.Control 
                    type="text" 
                    id='fullname'
                    placeholder="Full name" 
                    autoComplete='off'
                    value={fullname}
                    onChange={(e) => setFullname(e.target.value)}
                />
            </Form.Group>
          <Form.Label>Email</Form.Label>
          <Form.Group className='mb-3'>
                <Form.Control 
                    type="text" 
                    placeholder="Email Address" 
                    id="email"
                    autoComplete="off"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                />
          </Form.Group>
          <Form.Label>Password</Form.Label>
          <Form.Group className='mb-3'>
                <Form.Control 
                    type="password" 
                    placeholder="Password" 
                    id="password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    autoComplete="current-password"
                />
          </Form.Group>
          <Form.Label>Password Confirmation</Form.Label>
          <Form.Group className='mb-3'>
                <Form.Control 
                    type="password" 
                    id="password_confirmation"
                    value={passwordConfirmation}
                    onChange={(e) => setPasswordConfirmation(e.target.value)}
                    autoComplete="current-password"
                />
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