import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Registrar from "../views/Registrar.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    components: {
      main: Home,
    },
    children: [
      {
        path: "registrar",
        name: "Registrar",
        components: {
          registrar: Registrar,
        },
      },
    ],
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
