<template>
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">アカウント一覧</h3>

      <div class="box-tools">
        <div class="input-group input-group-sm" style="width: 150px;">
          <input
            type="text"
            name="table_search"
            class="form-control pull-right"
            placeholder="Search">

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
          <tr v-bind:key='accounts.id' v-for='accounts in orderList'>
            <td>{{accounts.account_id}}</td>
            <td>{{accounts.display_name}}</td>
            <td>{{accounts.category}}</td>
            <td>{{accounts.user_id}}</td>
            <td class='row'>
              <div class='col-md-4'>
                <router-link
                  v-bind:to="{
                    name: 'ShowAwsAccount',
                    params: {
                      id: `${accounts.id}`
                    }
                  }
                ">
                  <va-button name="詳細" size='1'></va-button>
                </router-link>
              </div>
              <div class='col-md-4'>
                <va-button v-on:click.native.prevent="onDelete(accounts.id)" name='削除' ></va-button>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import VAButton from 'vue2-admin-lte/src/components/VAButton.vue';

export default {
  name: 'List',
  components: {
    'va-button': VAButton,
  },
  computed: {
    orderList() { return this.$store.getters['awsaccounts/orderList']; },
  },
  methods: {
    onDelete(id) {
      this.$store.dispatch('awsaccounts/deleteAwsAccount', id).then((message) => {
        this.$store.commit('flash/flash', message);
      });
    },
  },
  beforeMount() {
    this.$store.dispatch('awsaccounts/load');
  },
};
</script>
