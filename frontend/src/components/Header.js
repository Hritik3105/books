/* eslint-disable */
import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import logo from '../assets/images/logo.png'

const Header = () => {
    return (
        <div className='container'>
            <div>
                <nav className="navbar navbar-expand-md navbar-dark">
                    <a className="navbar-brand mx-auto" href="#">
                        
                    <img src={logo} className='img-fluid' height={200} width={200}></img>

                        </a>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul className="navbar-nav">
                            <li className="nav-item">
                                <a className="nav-link" href="#">ABOUT </a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#">COURSES </a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#">BOOK NOTES</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

    );
}

export default Header;
