/* eslint-disable */
import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/cfy/Login.vue";
import Register from "../views/cfy/Register.vue";

// import Font from "../components/ak/Font.vue";

import Index from '../views/wtq/Index.vue'


import Find from "../views/mhp/Find.vue";

Vue.use(VueRouter);

const routes = [
  // { path: "/Font", component: Font },
  { path: "/login", component: Login },
  { path: "/register", component: Register },
  { path: "/find", component: Find },
  { path: "/index", component: Index },
];

const router = new VueRouter({
  routes
});

export default router;
