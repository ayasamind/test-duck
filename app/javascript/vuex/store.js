import Vue from 'vue';
import Vuex from 'vuex';
import awsaccounts from './modules/awsaccounts';
import view from './modules/view';
import flash from './modules/flash';

Vue.use(Vuex);

const store = new Vuex.Store({
  modules: {
    awsaccounts,
    view,
    flash,
  },
});

export default store;
