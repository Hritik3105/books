import Axios from 'axios';
import global from './Global';
Axios.defaults.baseURL = `${global.serverUrl}`;

  //Get All Books
  export async function getBooks() {
    const DATA = await Axios.get('/book',{
    }).then((res) => {
      if (res.data === 200) {
        return res.data;
      }
      return res.data;
    }).catch((err) => {
      console.log(err);
    });
    return DATA;
  } 

  // Get Book Content By ID
  export async function getBookContent(data) {
    const DATA = await Axios.get('/content/'+data.id,{
    }).then((res) => {
      if (res.data === 200) {
        return res.data;
      }
      return res.data;
    }).catch((err) => {
      console.log(err);
    });
    return DATA;
  } 

  //About Us
  export async function getAbout() {
    const DATA = await Axios.get('/about-page',{
    }).then((res) => {
      if (res.data === 200) {
        return res.data;
      }
      return res.data;
    }).catch((err) => {
      console.log(err);
    });
    return DATA;
  } 


