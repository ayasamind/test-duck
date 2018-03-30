import Vue from 'vue';
import store from '../vuex/store';
import App from '../app.vue';
// routerの設定
import router from './router';

/* eslint-disable no-unused-vars */
const el = document.body.appendChild(document.createElement('header'));
const app = new Vue({
  store,
  router,
  el,
  ...App,
});
/* eslint-disable no-unused-vars */
if (process.env.NODE_ENV !== 'production') {
  setTimeout(() => { app.$mount('#app'); }, 500);
} else {
  app.$mount('#app');
}
