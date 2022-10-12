/* eslint-disable */
import React from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import global from '../utils/Global';
import one from '../assets/images/die.jpeg'
import two from '../assets/images/two.jpg'
import { getBooks } from '../utils/Api';
const Home = () => {
    const [books, Setbooks] = React.useState([])
    React.useEffect(()=>{
        getBooks().then((res)=>{
            Setbooks(res)
            console.log('resBooks',res)
        }).catch((err)=>{

        })
    },[])
    return (
        <div className='container'>
            <div className='row'>
                <h1 className='py-3 pb-5' style={{ fontSize: '2.25rem', fontWeight: 700 }}>Book Summaries</h1>
                {books.length> 0 ? books.map((item,index)=>(
                    <div className='col-md-6'>
                        <div className='row pb-5  mb-3 bookart_main'>
                            <div className='col-md-4 book__art'>
                                <img src={`${global.serverUrl}${item.image}`} className='img-fluid' height={200} width={200}></img>
                            </div>
                            <div className='col-md-8'>
                                <h1 className="fs16" style={{ fontSize: '18px', fontWeight: 700 }}>
                                <RouterLink title={item.title} className='nolink book__title' 
                                to={`book-notes/${item.id}`}>
                               {item.title}<br />
                                    <span style={{ color: '#000000', lineHeight: '38px' }}>{item.summary}</span>
                                </RouterLink>
                                    </h1>
                                <div className="mt1">
                                        {item.description}
                                    </div>
                            </div>
                        </div>
                    </div>
)):<p>No Records Found</p>}
                
            </div>
        </div>
    );
}

export default Home;
