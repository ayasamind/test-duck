import Vue from 'vue';
import store from '../vuex/store';
import App from '../app.vue';
// routerの設定
import router from './router';

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('index'));
  if (process.env.NODE_ENV !== 'production') {
    setTimeout(() => {
      /* eslint-disable no-unused-vars */
      const app = new Vue({
        store,
        el,
        router,
        render: h => h(App),
      });
      /* eslint-disable no-unused-vars */
    }, 500);
  } else {
    /* eslint-disable no-unused-vars */
    const app = new Vue({
      store,
      el,
      router,
      render: h => h(App),
    });
    /* eslint-disable no-unused-vars */
  }
});
