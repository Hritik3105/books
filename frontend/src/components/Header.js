/* eslint-disable */
import React from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import {Nav,Navbar,NavDropdown, Container} from 'react-bootstrap';
import logo from '../assets/images/logo.png'

const Header = () => {
    return (
        <Navbar bg="light" expand="lg">
        <Container>
        <RouterLink className="navbar-brand mx-auto" to='/'> 
        <img src={logo} className='img-fluid' height={100} width={100}></img>
        </RouterLink>
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto  mx-auto">
              <Nav.Link href="#">
                <RouterLink to='about'>About</RouterLink>
              </Nav.Link>
              <Nav.Link href="javascript:void(0)">
                <RouterLink to='/'>Courses</RouterLink>
              </Nav.Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>

    );
}

export default Header;
