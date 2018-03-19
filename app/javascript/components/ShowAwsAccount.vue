<template>
  <div class='row'>
    <div class='col-md-1'></div>
    <div class='col-md-10'>
      <div class='box box-primary'>
        <div class='bod-header with-border'>
        </div>
        <div class='box-body'>
          <strong>アカウントID</strong>
            <p class='text-muted'>{{orderAccount.account_id}}</p>
          <strong>アカウント名</strong>
            <p class='text-muted'>{{orderAccount.account_name}}</p>
          <strong>カテゴリー</strong>
            <p class='text-muted'>{{orderAccount.category}}</p>
          <strong>作成日</strong>
            <p class='text-muted'>{{orderAccount.created_at}}</p>
          <strong>削除日</strong>
            <p class='text-muted'>{{orderAccount.deleted_at}}</p>
          <strong>表示名</strong>
            <p class='text-muted'>{{orderAccount.display_name}}</p>
          <strong>メールアドレス</strong>
            <p class='text-muted'>{{orderAccount.email}}</p>
          <strong>決済者ID</strong>
            <p class='text-muted'>{{orderAccount.payer_account_id}}</p>
          <strong>目的</strong>
            <p class='text-muted'>{{orderAccount.purpose}}</p>
          <strong>ステータス</strong>
            <p class='text-muted'>{{orderAccount.status}}</p>
          <strong>更新日</strong>
            <p class='text-muted'>{{orderAccount.updated_at}}</p>
          <strong>ユーザーID</strong>
            <p class='text-muted'>{{orderAccount.user_id}}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<style>
.box-body {
  margin-top: 10px;
}
</style>
<script>
export default{
  name: 'ShowAwsAccount',
  props: { id: String },
  computed: {
    orderAccount() { return this.$store.getters['awsaccounts/orderAccount']; },
  },
  watch: {
    id: {
      handler() {
        this.$store.dispatch('awsaccounts/getAwsAccount', this.id);
      },
      immediate: true,
    },
  },
};
</script>
