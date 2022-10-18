/* eslint-disable */
import React from 'react';
import { getBookContent } from '../utils/Api';
import { useNavigate, useParams } from 'react-router-dom';

const ContentBook = () => {
    const params = useParams();
    const [booksContent, SetbooksContent] = React.useState([])
    React.useEffect(()=>{
        getBookContent({id:params.id}).then((res)=>{
            SetbooksContent(res)
            console.log('getBookContent',res)
        }).catch((err)=>{

        })
    },[])
    function createMarkup(data) {
        return {__html: data};  
      }
    return ( 
        <div className='container'>
            <div className='row'>
        <div dangerouslySetInnerHTML={createMarkup(booksContent.content)} />
        </div>
     </div>

    );
}

export default ContentBook;
