/* eslint-disable */
import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

const Header = () => {
    return (
        <div className='container'>
            <div>
                <nav className="navbar navbar-expand-md navbar-dark">
                    <a className="navbar-brand mx-auto" href="#">Logo</a>
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
