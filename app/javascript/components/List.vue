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
            <td class='row'>
                <div class='col-md-4'>
                    <router-link v-bind:to="{ name: 'ShowAwsAccount', params : {id: `${item.id}` }}">
                        <va-button name="詳細" size='1'></va-button>
                    </router-link>
                </div>
                <div class='col-md-4'>
                    <va-button v-on:click.native.prevent="onDelete(item.id)" name='削除' ></va-button>
                </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import ShowAwsAccount from './ShowAwsAccount'
import VAButton from 'vue2-admin-lte/src/components/VAButton'
export default {
    name : 'List',
    components: {
        'va-button' : VAButton,
    },
    computed: {
        orderList() {return this.$store.getters['awsaccounts/orderList']}
    },
    methods: {
        onDelete(id){
            this.$store.dispatch('awsaccounts/deleteAwsAccount', id).then(() => {
            })
        }
    },
    beforeMount() {
        this.$store.dispatch('awsaccounts/load')
    },
}
</script>
