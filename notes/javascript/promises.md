Date: 21/Oct/2020  
Tags: #javascript

### What is a javascript promises


### Javascript promises syntax
```javascript
const promiseName = new Promise((res, rej) => { 
  // condition 
}); 

promiseName. 
  then(() => { // if condition true
    console.log('condition true'); 
  }). 
  catch(() => { // if condition false
    console.log('condition false'); 
  }); 




```
