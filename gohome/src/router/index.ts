/* eslint-disable */
import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/cfy/Login.vue";
import Register from "../views/cfy/Register.vue";
Vue.use(VueRouter);

const routes = [
  { path: "/login", component: Login },
  { path: "/register", component: Register },
];

const router = new VueRouter({
  routes
});

export default router;
