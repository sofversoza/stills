import React from 'react'
import '../styles.css'
import { Navbar, Nav, NavDropdown } from 'react-bootstrap';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import UserFavorites from './UserFavorites';
import UserRatings from './UserRatings';
import UserSettings from './UserSettings'
import Home from './Home'


function NavigationBar() {

  return (
    <Router>
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
            <NavDropdown id='nav-text' title="Account">
              <NavDropdown.Item as={Link} to={'/userfavorites'} id='nav-text-d'>Favorites</NavDropdown.Item>
              <NavDropdown.Item as={Link} to={'/userratings'} id='nav-text-d'>Ratings</NavDropdown.Item>
              <NavDropdown.Item as={Link} to={'/usersettings'} id='nav-text-d'>Settings</NavDropdown.Item>
            </NavDropdown>

            <Nav.Link id='nav-text' as={Link} to={'/'}>Home</Nav.Link>
          </Nav>
         </Navbar.Collapse>
      </Navbar>
     </div>
     <div>
      <Routes>
        <Route path='/userfavorites' element={<UserFavorites />} />
        <Route path='/userratings' element={<UserRatings />} />
        <Route path='/usersettings' element={<UserSettings />} />
        <Route path='/' element={<Home />} />
      </Routes>
     </div>
    </div>
    </Router>
  )
}

export default NavigationBar;