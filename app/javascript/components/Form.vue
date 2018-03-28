<template>
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
      value='登録'
      @click="onSaveAccount"
      ></va-input>
  </form>
</template>

<style scoped>
input.form-control {
  margin-bottom:20px;
}

select.form-control{
  margin:5px;
}

</style>
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
    };
  },
  created() {
    axios.get('aws_accounts/send_params')
      .then((response) => {
        // optionのデータ整形
        this.category = this.createOptions(response.data.categories);
        this.status = this.createOptions(response.data.statuses);
      })
      .catch((e) => {
        this.errors.push(e);
      });
  },
  components: {
    'va-input': VAInput,
    'va-select': VASelect,
  },
  methods: {
    onSaveAccount() {
      this.$store.dispatch('awsaccounts/saveAwsAccount', this.aws_account);
    },
    createOptions(object) {
      const data = {};
      const value = object.value;
      const option = object.option;
      const length = Object.values(option).length;
      for (let i = 0; i < length; i += 1) {
        data[Object.values(value)[i]] = Object.values(option)[i];
      }
      return data;
    }
  },
};
</script>
