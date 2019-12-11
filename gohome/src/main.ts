import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";

import vant from "vant";
// eslint-disable-next-line
import 'vant/lib/index.css';
import { Lazyload } from 'vant';

// options 为可选参数，无则不传
Vue.use(Lazyload);

Vue.config.productionTip = false;

Vue.use(vant);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
