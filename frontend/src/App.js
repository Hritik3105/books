/* eslint-disable */
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from './components/Header';
import Footer from './components/Footer';
import { useRoutes, useNavigate } from 'react-router-dom';
import routes from './routes';

function App() {
  const routing = useRoutes(routes);

  return (
    <>
    <Header/>
    {routing}

        {/* <Footer/> */}
        </>
  );
}

export default App;
