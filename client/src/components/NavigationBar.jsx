import React from 'react'
import '../styles.css'
import { Navbar, Nav, NavDropdown } from 'react-bootstrap';
import { Routes, Route, Link } from 'react-router-dom';
import UserFavorites from './UserFavorites';
import UserRatings from './UserRatings';
import UserSettings from './UserSettings'
import Home from './Home'
import Header from './Header'


function NavigationBar({ user, setUser, setMood}) {
  
  
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
      <Routes>
        {/* <Route path='/userfavorites' element={<UserFavorites user= {user} />} /> */}
        {/* <Route path='/userratings' element={<UserRatings />} />
        <Route path='/usersettings' element={<UserSettings />} /> */}
        <Route path='/' element={<Home />} />
      </Routes>
     </div>
    </div>
  
    </div>

  //   <header>
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
  // </header>
  );
}

export default NavigationBar;