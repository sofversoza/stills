import React, {useState} from 'react'
import '../styles.css'
import { Button, Form, Container } from 'react-bootstrap'
import { useNavigate } from "react-router-dom";


function Login({setUser,setMood}) {
const [email, setEmail]= useState("");
const [password, setPassword] = useState("");
let navigate = useNavigate();


function handleSubmit(e){
  e.preventDefault();
  navigate("/")
  fetch("/login",{
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({email,password}),
  })
  .then((r)=>{
    if(r.ok) {
      r.json().then((user)=> setUser(user));
      
    }

  });
}


  return (
    <div id='form-font'>
    <Container className="container">
     <Form id='login-form' onSubmit={handleSubmit}>
       <Form.Label id='form-label'>Please Login</Form.Label>
         <Form.Group className="mb-3">
           <Form.Control 
                 type="text" 
                 placeholder="Email Address"
                 autoComplete='off'
                 value={email}
                 onChange={(e) => setEmail(e.target.value)}
           />
           <Form.Text className="text-muted" style={{fontSize:'11px'}}>
             We'll never share your email with anyone else
           </Form.Text>
         </Form.Group>
         <Form.Group className="mb-4">
           <Form.Control 
                 type="password" 
                 placeholder="Password"
                 autoComplete='current-password'
                 value={password}
                 onChange={(e) => setPassword(e.target.value)}
           />
         </Form.Group>
         <Form.Group>
           <Form.Text>
             What are you in the mood for today?
           </Form.Text>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Thriller" label="Thriller" style={{fontSize:'13px', marginTop: '5px'}}/>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Drama" label="Drama" style={{fontSize:'13px'}}/>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Horror" label="Horror"  style={{fontSize:'13px'}}/>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Romance" label="Romance" style={{fontSize:'13px'}}/>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Fantasy" label="Fantasy/Sci-Fi" style={{fontSize:'13px'}}/>
           <Form.Check onChange={(e)=> setMood(e.target.value)} type="checkbox" value="Comedy" label="Comedy/Family" style={{fontSize:'13px'}}/>
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