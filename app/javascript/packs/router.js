
import Vue from 'vue'
import AwsAccounts from 'components/AwsAccounts'
import List from 'components/List'
import CreateAwsAccounts from 'components/CreateAwsAccounts'
import ShowAwsAccount from 'components/ShowAwsAccount'
import store from '../vuex/store'

const routes = [
  {
      path:'',
      component: AwsAccounts,
      meta: { root: true },
      children: [
          {
              path: '',
              name: 'ListAwsAccount',
              component: List
          },
          {
              path: ':id',
              name: 'ShowAwsAccount',
              component: ShowAwsAccount,
              props: route => ({ id: Number(route.params.id)})
          },
          {
              path: 'new',
              name: 'CreateAwsAccounts',
              component: CreateAwsAccounts
          }
      ]
  },

]

import VueRouter from 'vue-router/dist/vue-router'
Vue.use(VueRouter)
const router = new VueRouter({
    routes
})

router.beforeEach((to, from, next) => {
    if (to.name !== 'ShowAwsAccount') store.commit('view/start')
    next()
})

router.afterEach((to, from) => {
  store.commit('view/end')
})

export default router
