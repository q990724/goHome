import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";
import vant from "vant";
// eslint-disable-next-line
import 'vant/lib/index.css';

Vue.config.productionTip = false;
axios.defaults.baseURL = "http://127.0.0.1:5050";
axios.defaults.withCredentials = true;
Vue.prototype.axios = axios;

Vue.use(vant);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
