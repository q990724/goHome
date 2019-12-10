/* eslint-disable */
import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/cfy/Login.vue";
import Register from "../views/cfy/Register.vue";
import Font from "../components/ak/Font.vue";
Vue.use(VueRouter);

const routes = [
  { path: "/Font", component: Font },
  { path: "/login", component: Login },
  { path: "/register", component: Register },
];

const router = new VueRouter({
  routes
});

export default router;
