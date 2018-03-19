import api from '../../api/awsaccounts';
import router from '../../packs/router';

const awsaccounts = {
  namespaced: true,
  state: {
    accounts: [],
    account: [],
  },
  getters: {
    orderList: state => state.accounts,
    orderAccount: state => state.account,
  },
  mutations: {
    // アカウントリストをセット
    setAwsAccounts(state, { accounts }) {
      state.accounts = accounts;
    },
    setAwsAccount(state, { account }) {
      state.account = account;
    },
    deleteAwsAccount(state, { id }) {
      state.accounts = state.accounts.filter(el => el.id !== id);
    },
  },
  actions: {
    // アカウントを読み込む
    load({ commit }) {
      return api.getAwsAccounts().then((accounts) => {
        commit('setAwsAccounts', { accounts });
      });
    },
    getAwsAccount({ commit }, id) {
      return api.getAwsAccount(id).then((account) => {
        commit('setAwsAccount', { account });
      });
    },
    saveAwsAccount({ commit }, data) {
      return api.createAwsAccount(data).then((accounts) => {
        commit('setAwsAccount', { accounts });
        router.push({ name: 'ListAwsAccount' });
      });
    },
    deleteAwsAccount({ commit }, id) {
      return api.deleteAwsAccount(id).then(() => {
        commit('deleteAwsAccount', { id });
      });
    },
  },
};

export default awsaccounts;
