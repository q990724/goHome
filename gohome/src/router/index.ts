/* eslint-disable */
import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/cfy/Login.vue";
import Register from "../views/cfy/Register.vue";
import Me from "../views/cfy/Me.vue";
import Parent from "../views/parent.vue";
import Font from "../views/ak/Font.vue";
import Images from "../views/ak/Images.vue";

import Index from '../views/wtq/Index.vue'
import todoParent from '../views/wtq/TodoParent.vue'


import Find from "../views/mhp/Find.vue";

Vue.use(VueRouter);

const routes = [
  { path: "/" , component: Parent},
  { path: "/Images", component: Images },
  { path: "/Font", component: Font },
  { path: "/login", component: Login },
  { path: "/register", component: Register },
  { path: "/find", component: Find },
  { path: "/me", component: Me},
  { path: "/index", component: Index },
  { path: "/todoParent", component: todoParent },
];

const router = new VueRouter({
  routes
});

export default router;
