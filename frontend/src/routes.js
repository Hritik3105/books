import React from 'react';
import Home from './pages/Home';
import ContentBook from './pages/ContentBook';
import About from './pages/About';
const routes = [
    { path: '/', element:<Home /> },
    { path: 'book-notes/:id', element: <ContentBook /> },
    { path: 'about', element: <About /> },

]


export default routes;