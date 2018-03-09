// 通信成功の処理
const apiSuccess = response => {
    if (response.data) {
        return response.data
    } else {
        return Promise.reject('APIによるエラー')
    }
}

// 通信失敗の処理
const apiError = error => {
  console.error('ERROR:', error)
}

import axios from 'axios'
export default {
    getAwsAccounts: () =>
        axios.get('aws_accounts/get_accounts').then(apiSuccess).catch(apiError),
    getAwsAccount: (id) =>
        axios.get(`aws_accounts/${id}`, { id }).then(apiSuccess).catch(apiError),
}
