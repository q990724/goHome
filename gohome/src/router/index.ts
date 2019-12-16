/* eslint-disable */
import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/cfy/Login.vue";
import Register from "../views/cfy/Register.vue";
import Index from "../components/wtq/Index.vue";
Vue.use(VueRouter);

const routes = [
  { path: "/login", component: Login },
  { path: "/register", component: Register },
  { path: "/index", component: Index },
];

const router = new VueRouter({
  routes
});

export default router;
