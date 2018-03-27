
import Vue from 'vue';
import VueRouter from 'vue-router/dist/vue-router';
import AwsAccounts from '../components/AwsAccounts.vue';
import List from '../components/List.vue';
import CreateAwsAccounts from '../components/CreateAwsAccounts.vue';
import ShowAwsAccount from '../components/ShowAwsAccount.vue';
import store from '../vuex/store';


const routes = [
  {
    path: '',
    component: AwsAccounts,
    meta: { root: true },
    children: [
      {
        path: '',
        name: 'ListAwsAccount',
        component: List,
      },
      {
        path: 'aws_account/:id',
        name: 'ShowAwsAccount',
        component: ShowAwsAccount,
        props: true,
      },
      {
        path: 'new',
        name: 'CreateAwsAccounts',
        component: CreateAwsAccounts,
      },
    ],
  },
];

Vue.use(VueRouter);
const router = new VueRouter({
  // mode: 'history',
  routes,
});

router.beforeEach((to, from, next) => {
  if (to.name !== 'ShowAwsAccount') store.commit('view/start');
  next();
});

router.afterEach(() => {
  store.commit('view/end');
});

export default router;
