/* eslint-disable */
import React from 'react';
import { getAbout } from '../utils/Api';
import { useNavigate, useParams } from 'react-router-dom';
const About = () => {
    const params = useParams();
    const [about, SetAbout] = React.useState([])
    React.useEffect(() => {
        getAbout().then((res) => {
            SetAbout(res)
            console.log('about', res)
        }).catch((err) => {

        })
    }, [])
    function createMarkup(data) {
        return { __html: data };
    }
    return (
        <div className='container'>
            <div className='row'>
                <div dangerouslySetInnerHTML={createMarkup(booksContent.content)} />
            </div>
        </div>
    );
}

export default About;
