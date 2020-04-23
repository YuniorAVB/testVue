import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import AOS from 'aos';
Vue.config.productionTip = false
import 'aos/dist/aos.css';
AOS.init();

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
