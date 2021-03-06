import axios from 'axios';

// 通信成功の処理
const apiSuccess = (response) => {
  if (response.data) {
    return response.data;
  }
  return response;
};

// 通信失敗の処理
const apiError = (error) => {
  console.log(error);
};

const setToken = (params) => {
  const tags = document.getElementsByTagName('meta');
  for (let i = 0; i < tags.length; i += 1) {
    if (tags[i].name === 'csrf-token') {
      params.authenticity_token = tags[i].content;
      break;
    }
  }
  return params;
};

export default {
  getAwsAccounts: () =>
    axios.get('aws_accounts/get_accounts').then(apiSuccess).catch(apiError),
  getAwsAccount: id =>
    axios.get(`aws_accounts/${id}`, { id }).then(apiSuccess).catch(apiError),
  editAwsAccount: id =>
    axios.get(`aws_accounts/${id}/edit`, { id }).then(apiSuccess).catch(apiError),
  createAwsAccount: (aws_account, params = {}) =>
    axios.post('aws_accounts', { aws_account, params: setToken(params) }).then(apiSuccess),
  updateAwsAccount: (aws_account, params = {}) =>
    axios.put(`aws_accounts/${aws_account.id}`, { aws_account, params: setToken(params) }).then(apiSuccess).catch(apiError),
  deleteAwsAccount: (id, params = {}) =>
    axios.delete(`aws_accounts/${id}`, { id, params: setToken(params) }).then(apiSuccess).catch(apiError),
};
