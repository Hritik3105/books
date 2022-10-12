/* eslint-disable */
import React from 'react';
import { getBookContent } from '../utils/Api';

const ContentBook = () => {

    const [books, Setbooks] = React.useState([])
    React.useEffect(()=>{
        getBookContent({id:54}).then((res)=>{

            console.log('getBookContent',res)
        }).catch((err)=>{

        })
    },[])
    return (
        <div>
            Hii ContentBook
        </div>
    );
}

export default ContentBook;
