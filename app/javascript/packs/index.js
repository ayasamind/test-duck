import Vue from 'vue'
import App from '../app.vue'
import store from '../vuex/store'

//routerの設定
import router from './router'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('index'))
    const app = new Vue({
        store,
        el,
        router,
        render: h => h(App)
    })
})
