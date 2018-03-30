<template>
  <div>
    <p class='error_message' :key='error' v-for='error in error_message'>
      {{ error }}
    </p>
    <form @submit="onSaveAccount">
      <va-input
        type='text'
        :isHorizontal='true'
        v-model='aws_account.account_id'
        title='アカウントID'
        placeholder='アカウントID'
        ></va-input>
      <va-input
        type='email'
        :isHorizontal='true'
        v-model='aws_account.email'
        title='メールアドレス'
        placeholder='メールアドレス'
        ></va-input>
      <va-input
        type='text'
        :isHorizontal='true'
        v-model='aws_account.account_name'
        title='アカウント名'
        placeholder='アカウント名'
        ></va-input>
      <va-input
        type='text'
        :isHorizontal='true'
        v-model='aws_account.display_name'
        title='表示名'
        placeholder='表示名'
        ></va-input>
      <va-select
        :isHorizontal='true'
        title='カテゴリー'
        :list='category'
        v-model='aws_account.category'
        :isEmpty='true'
        ></va-select>
      <va-select
        :isHorizontal='true'
        title='ステータス'
        :list='status'
        v-model='aws_account.status'
        :isEmpty='true'
        ></va-select>
      <va-select
        :isHorizontal='true'
        v-model='aws_account.payer_account_id'
        title='決済アカウントID'
        :list='payer_account_id'
        :isEmpty='true'
        ></va-select>
      <va-select
        :isHorizontal='true'
        v-model='aws_account.user_id'
        title='ユーザーID'
        :list='user_id'
        :isEmpty='true'
        ></va-select>
      <va-input
        type='text'
        :isHorizontal='true'
        v-model='aws_account.purpose'
        title='目的'
        placeholder='目的'
        ></va-input>
      <va-input
        type='submit'
        :value='submit_message'
        @click="onSaveAccount"
        ></va-input>
    </form>
  </div>
</template>

<script>
import axios from 'axios';
import VAInput from './VAInput.vue';
import VASelect from './VASelect.vue';

export default {
  name: 'Form',
  data() {
    return {
      aws_account: {},
      payer_account_id: { 1: '1', 2: '2', 3: '3' },
      user_id: { 1: '1', 2: '2', 3: '3' },
      category: {},
      status: {},
      error_message: {},
      submit_message: '登録',
    };
  },
  created() {
  // セレクトボックスのパラメータ取得
    axios.get('aws_accounts/send_params')
      .then((response) => {
        this.category = response.data.category;
        this.status = response.data.status;
      })
      .catch((e) => {
        this.errors.push(e);
      });
  },
  beforeUpdate() {
    const editStatus = this.$store.getters['awsaccounts/getEditStatus'];
    if (editStatus === true) {
      this.aws_account = this.$store.getters['awsaccounts/orderAccount'];
      this.submit_message = '更新';
    }
  },
  components: {
    'va-input': VAInput,
    'va-select': VASelect,
  },
  methods: {
    onSaveAccount() {
      const editStatus = this.$store.getters['awsaccounts/getEditStatus'];
      if (editStatus) {
        this.$store.dispatch('awsaccounts/updateAwsAccount', this.aws_account)
          .then(() => {
            this.error_message = this.$store.getters['error/getError'];
          });
      } else {
        this.$store.dispatch('awsaccounts/saveAwsAccount', this.aws_account)
          .then(() => {
            this.error_message = this.$store.getters['error/getError'];
          });
      }
    },
  },
};
</script>

<style>
input.form-control {
  margin-bottom:20px;
}

select.form-control{
  margin-bottom:20px;
}

p.error_message {
  color: red;
}
</style>
