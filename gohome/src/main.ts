import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";

import vant from "vant";
// eslint-disable-next-line
import 'vant/lib/index.css';
import { Lazyload } from 'vant';

// options 为可选参数，无则不传
Vue.use(Lazyload);

Vue.config.productionTip = false;
Vue.prototype.isLogin = ()=>{
  return new Promise((resolve,reject)=>{
    axios({
      url: "http://127.0.0.1:5050/user/checkLogin",
      method: "get"
    }).then(res=>{
      if(res.data.code == 200){
        resolve(true);
      }else{
        resolve(false);
      }
    }).catch(err=>{
      reject(false);
    });
  });
}

Vue.use(vant);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
