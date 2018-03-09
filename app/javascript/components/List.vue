<template>
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">アカウント一覧</h3>

      <div class="box-tools">
        <div class="input-group input-group-sm" style="width: 150px;">
          <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

          <div class="input-group-btn">
            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
          </div>
        </div>
      </div>
    </div>
    <div class="box-body table-responsive no-padding">
      <table class="table table-hover">
        <tbody>
          <tr>
            <th>アカウントID</th>
            <th>表示名</th>
            <th>カテゴリー</th>
            <th>ユーザー名</th>
            <th>アクション</th>
          </tr>
          <tr v-for='item in orderList'>
            <td>{{item.account_id}}</td>
            <td>{{item.display_name}}</td>
            <td>{{item.category}}</td>
            <td>{{item.user_id}}</td>
            <td><router-link v-bind:to="{ name: 'ShowAwsAccount', params : {id: item.account_id }}">詳細</router-link></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import ShowAwsAccount from './ShowAwsAccount'
export default {
    name : 'List',
    computed: {
        orderList() {return this.$store.getters['awsaccounts/orderList']}
    }
}
</script>
