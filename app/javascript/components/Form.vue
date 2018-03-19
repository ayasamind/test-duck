<template>
  <form @submit="onSaveAccount">
    <va-input
      type='text'
      v-bind:isHorizontal='true'
      v-model='data.account_id'
      title='アカウントID'
      placeholder='アカウントID'
      ></va-input>
    <va-input
      type='text'
      v-bind:isHorizontal='true'
      v-model='data.email'
      title='メールアドレス'
      placeholder='メールアドレス'
      ></va-input>
    <va-input
      type='text'
      v-bind:isHorizontal='true'
      v-model='data.account_name'
      title='アカウント名'
      placeholder='アカウント名'
      ></va-input>
    <va-input
      type='text'
      v-bind:isHorizontal='true'
      v-model='data.display_name'
      title='表示名'
      placeholder='表示名'
      ></va-input>
    <va-select
      v-bind:isHorizontal='true'
      v-model='data.category'
      title='カテゴリー'
      v-bind:list='categories'
      ></va-select>
    <va-select
      v-bind:isHorizontal='true'
      v-model='data.status'
      title='ステータス'
      v-bind:list='status'
      ></va-select>
    <va-select
      v-bind:isHorizontal='true'
      v-model='data.payer_account_id'
      title='決済アカウントID'
      v-bind:list='payer_account_id'
      ></va-select>
    <va-select
      v-bind:isHorizontal='true'
      v-model='data.user_id'
      title='ユーザーID'
      v-bind:list='user_id'
      ></va-select>
    <va-input
      type='text'
      v-bind:isHorizontal='true'
      v-model='data.purpose'
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

<style>
input.form-control{
  margin:5px;
}

select.form-control{
  margin:5px;
}

</style>
<script>
import VAInput from 'vue2-admin-lte/src/components/VAInput.vue';
import VASelect from 'vue2-admin-lte/src/components/VASelect.vue';

export default {
  name: 'Form',
  data() {
    return {
      data: [],
      categories: ['a', 'b'],
      status: ['sample1', 'sample2'],
      payer_account_id: [1, 2, 3],
      user_id: ['sample1', 'sample2', 'sample3'],
    };
  },
  components: {
    'va-input': VAInput,
    'va-select': VASelect,
  },
  methods: {
    // 保存ボタン＆サブミットで内部データをストアに送る
    onSaveAccount() {
      this.$store.dispatch('awsaccounts/saveAwsAccount', this.data).then(() => {
      });
    },
  },
};
</script>
