// 通信成功の処理
const apiSuccess = response => {
    if (response.data) {
        return response.data
    } else {
        return Promise.reject(response)
    }
}

// 通信失敗の処理
const apiError = error => {
  console.error('ERROR:', error)
}

const setToken = (params) => {
  const tags = document.getElementsByTagName("meta");
  for (let i=0; i<tags.length; i++) {
    if (tags[i].name === "csrf-token") {
      params.authenticity_token = tags[i].content;
      break;
    }
  }
  return params;
}

import axios from 'axios'
export default {
    getAwsAccounts: () =>
        axios.get('aws_accounts/get_accounts').then(apiSuccess).catch(apiError),
    getAwsAccount: (id) =>
        axios.get(`aws_accounts/${id}`, { id }).then(apiSuccess).catch(apiError),
    createAwsAccount: (item, params = {} ) =>
        axios.get('aws_accounts/new', {item : JSON.stringify({item}), params: setToken(params) } ).then(apiSuccess).catch(apiError),
    deleteAwsAccount: (id, params = {}) =>
        axios.delete(`aws_accounts/${id}`, { id, params: setToken(params) }).then(apiSuccess).catch(apiError),
}
