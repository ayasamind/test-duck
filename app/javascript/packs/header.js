
import Vue from 'vue'
import App from '../app.vue'

//routerの設定
import routes from './routes'
import VueRouter from 'vue-router/dist/vue-router'
Vue.use(VueRouter)
const router = new VueRouter({
  routes
})

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('header'))
  const app = new Vue({
    el,
    router,
    render: h => h(App)
  })
})
