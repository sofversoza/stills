import React from 'react'
import '../styles.css'
import { Navbar, Nav, NavDropdown } from 'react-bootstrap';


function NavigationBar() {
  return (
    <div>
      <Navbar bg='black' variant='dark' expand='sm' collapseOnSelect>
         <Navbar.Brand id='nav-brand'>
           Stills 
         </Navbar.Brand>
         <Navbar.Toggle />
         <Navbar.Collapse>
          <Nav style={{padding: '18px'}}>
            <NavDropdown id='nav-text' title="Account">
              <NavDropdown.Item href='account/favorites' id='nav-text-d'>Favorites</NavDropdown.Item>
              <NavDropdown.Item href='account/ratings' id='nav-text-d'>Ratings</NavDropdown.Item>
              <NavDropdown.Item href='account/settings' id='nav-text-d'>Settings</NavDropdown.Item>
            </NavDropdown>
            <Nav.Link href='' id='nav-text'>Test</Nav.Link>
            <Nav.Link href='' id='nav-text'>Test</Nav.Link>
            <Nav.Link href='' id='nav-text'>Test</Nav.Link> 
          </Nav>
         </Navbar.Collapse>
      </Navbar>
    </div>
  )
}

export default NavigationBar;