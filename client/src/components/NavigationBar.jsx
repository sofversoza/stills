import React from 'react'
import '../styles.css'
import { Navbar, Nav, NavDropdown } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import Header from './Header'

function NavigationBar({ user, setUser, setMood }) {
  return (
    <div>
      <Header user={user} setUser={setUser} setMood={setMood}/>
    <div>
     <div>
      <Navbar bg='black' variant='dark' expand='sm' collapseOnSelect>
         <Navbar.Brand id='nav-brand'>
           <img src='../Stills.png' height='160px' width='160px'/>
           STILLS
         </Navbar.Brand>
         <Navbar.Toggle />
         <Navbar.Collapse>
          <Nav style={{padding: '40px'}}>
            <Nav.Link id='nav-text' as={Link} to={'/'}>Home</Nav.Link>
            <NavDropdown id='nav-text' title="Account">
              <NavDropdown.Item as={Link} to={'/userfavorites'} id='nav-text-d'>Favorites</NavDropdown.Item>
              <NavDropdown.Item as={Link} to={'/userratings'} id='nav-text-d'>Ratings</NavDropdown.Item>
              <NavDropdown.Item as={Link} to={'/usersettings'} id='nav-text-d'>Settings</NavDropdown.Item>
            </NavDropdown>
          </Nav>
         </Navbar.Collapse>
      </Navbar>
     </div>
     <div>
     </div>
    </div>
    </div>
  );
}

export default NavigationBar;