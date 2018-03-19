import Vue from 'vue';
import Vuex from 'vuex';
import awsaccounts from './modules/awsaccounts';
import view from './modules/view';

Vue.use(Vuex);

const store = new Vuex.Store({
  modules: {
    awsaccounts,
    view,
  },
});

export default store;
