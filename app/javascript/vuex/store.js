import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

import awsaccounts from './modules/awsaccounts'
import view from './modules/view'

const store = new Vuex.Store({
    modules: {
        awsaccounts,
        view
    },
})

export default store
