import api from '../../api/awsaccounts'
import router from '../../packs/router.js'

const awsaccounts = {
    namespaced: true,
    state: {
        awsaccounts: [],
        awsaccount: []
    },
    getters: {
        orderList: state => {
            return state.awsaccounts
        },
        orderAccount: state => {
            return state.awsaccount
        }
    },
    mutations: {
        // アカウントリストをセット
        setAwsAccounts(state, { awsaccounts }) {
            state.awsaccounts = awsaccounts
        },
        setAwsAccount(state, { awsaccount }) {
            state.awsaccount = awsaccount
        },
    },
    actions: {
        // アカウントを読み込む
        load({ commit }) {
            return api.getAwsAccounts().then(awsaccounts => {
                commit('setAwsAccounts', { awsaccounts })
            })
        },
        getAwsAccount({ commit }, id) {
            return api.getAwsAccount(id).then(awsaccount => {
                commit('setAwsAccount', { awsaccount })
            })
        },
        saveAwsAccount({ commit, getters }, data) {
            return api.createAwsAccount(data).then(awsaccounts => {
                commit('setAwsAccounts', { awsaccounts })
                router.push({ name :'ListAwsAccount'})
            })
        },
        deleteAwsAccount({ commit }, id) {
            return api.deleteAwsAccount(id).then(awsaccounts => {
                commit('setAwsAccounts', { awsaccounts })
            })
        }
    },
}

export default awsaccounts
