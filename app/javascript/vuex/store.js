import Vue from 'vue';
import Vuex from 'vuex';
import awsaccounts from './modules/awsaccounts';
import view from './modules/view';
import flash from './modules/flash';
import error from './modules/error';

Vue.use(Vuex);

const store = new Vuex.Store({
  modules: {
    awsaccounts,
    view,
    flash,
    error,
  },
});

export default store;
