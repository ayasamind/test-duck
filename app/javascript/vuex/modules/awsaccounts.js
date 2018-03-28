import api from '../../api/awsaccounts';
import router from '../../packs/router';

const awsaccounts = {
  namespaced: true,
  state: {
    accounts: [],
    account: [],
    edit: false,
  },
  getters: {
    orderList: state => state.accounts,
    orderAccount: state => state.account,
    getEditStatus: state => state.edit,
  },
  mutations: {
    // アカウントリストをセット
    setAwsAccounts(state, { accounts }) {
      state.accounts = accounts;
    },
    setAwsAccount(state, { account }) {
      state.account = account;
      state.edit = true;
    },
    deleteAwsAccount(state, { id }) {
      state.accounts = state.accounts.filter(el => el.id !== id);
    },
    changeEditStatus(state) {
      state.edit = false;
    }
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
      return api.createAwsAccount(data).then((response) => {
        //  リクエスト成功
        if (response.status === 'error') {
          //  保存失敗
          commit('flash/flash', response, { root: true });
        } else {
          //  保存成功
          router.push({ name: 'ListAwsAccount' });
          commit('flash/flash', response, { root: true });
        }
      }).catch((response) => {
        //  リクエスト失敗
        console.log(response);
      });
    },
    deleteAwsAccount({ commit }, id) {
      return api.deleteAwsAccount(id).then((response) => {
        commit('deleteAwsAccount', { id });
        commit('flash/flash', response, { root: true });
      });
    },
  },
};

export default awsaccounts;
