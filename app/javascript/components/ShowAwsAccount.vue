<template>
  <div>
    <p>{{awsaccount.account_name}}</p>
    <ul>
      <li>{{awsaccount.account_id}}</li>
      <li>{{awsaccount.account_name}}</li>
      <li>{{awsaccount.category}}</li>
      <li>{{awsaccount.created_at}}</li>
      <li>{{awsaccount.deleted_at}}</li>
      <li>{{awsaccount.display_name}}</li>
      <li>{{awsaccount.email}}</li>
      <li>{{awsaccount.id}}</li>
      <li>{{awsaccount.payer_account_id}}</li>
      <li>{{awsaccount.purpose}}</li>
      <li>{{awsaccount.status}}</li>
      <li>{{awsaccount.updated_at}}</li>
      <li>{{awsaccount.user_id}}</li>
    </ul>
  </div>
</template>
<script>
import axios from 'axios'
export default{
  name : 'ShowAwsAccount',
  // Rails側から受け取ったデータをレンダリング
  data() {
    return {
      awsaccount: {},
    };
  },

  methods: {
    getAccounts() {
      axios.get('aws_accounts/1')
      .then(res => {
        console.log(res.data);
        this.awsaccount = res.data;
      });
    },
  },
  mounted() {
    this.getAccounts();
  },
}
</script>
