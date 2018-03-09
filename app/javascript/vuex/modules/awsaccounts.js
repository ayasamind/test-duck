import api from '../../api/awsaccounts'

const awsaccounts = {
    namespaced: true,
    state: {
        awsaccounts: []
    },
    getters: {
        orderList: state => {
          return state.awsaccounts
        },
    },
    mutations: {
        // アカウントリストをセット
        setAwsAccounts(state, { awsaccounts }) {
            state.awsaccounts = awsaccounts
        }
    },
    actions: {
        // アカウントを読み込む
        load({ commit }) {
            return api.getAwsAccounts().then(awsaccounts => {
                commit('setAwsAccounts', { awsaccounts })
            })
        },
    },
}

export default awsaccounts
