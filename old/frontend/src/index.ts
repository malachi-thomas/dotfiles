//import "./components/sidebar"
//import "./components/navbar"

import Vue from "vue"

const HelloVueApp = {
  data() {
    return {
      message: "Hello Vue!!"
    }
  }
}

Vue.createApp(HelloVueApp).mount("#hello-vue")

//const data = {
//  username: "bob",
//  password: "cool-bob123"
//}
//
//fetch("http://localhost:3001/api/user", {
//  method: "POST",
//  headers: {
//    "content-type": "application/json",
//  },
//  body: JSON.stringify(data)
//}).then((res) => res.json())
//  .then((json) => { console.log(json) })
//  .catch((err) => { console.log(err) })