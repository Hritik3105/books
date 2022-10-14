/* eslint-disable */
import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import logo from '../assets/images/logo.png'
const Header = () => {
    return (
        <div className='container'>
            <div> 
                <nav className="navbar navbar-expand-md navbar-dark">
                <RouterLink className="navbar-brand mx-auto" to='/'> 

                        
                    <img src={logo} className='img-fluid' height={200} width={200}></img>

                    </RouterLink>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul className="navbar-nav">
                            <li className="nav-item">
                             <RouterLink  className="nav-link"to='about'> About </RouterLink>

                            </li>
                            {/* <li className="nav-item">
                            <RouterLink  className="nav-link" to='about'> COURSES </RouterLink>
                            </li> */}
                            <li className="nav-item">
                            <RouterLink  className="nav-link" to='/'> BOOK NOTES </RouterLink>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

    );
}

export default Header;
