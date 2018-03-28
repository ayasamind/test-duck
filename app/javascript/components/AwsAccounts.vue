<template>
  <div>
    <div v-if="getFlash.status === 'success'">
      <div
        class='alert alert-success alert-dismissible'
        @click='delFlash'
        style="margin-bottom:0px"
        >
        {{ getFlash.message }}
      </div>
    </div>
    <div v-else-if="getFlash.status === 'error'">
      <div
        class='alert alert-error alert-dismissible'
        @click='delFlash'
        style="margin-bottom:0px"
        >
        {{ getFlash.message }}
      </div>
    </div>
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'AwsAccounts',
  computed: {
    getFlash() {
      return this.$store.getters['flash/getFlash'];
    }
  },
  methods: {
    delFlash() {
      this.$store.commit('flash/end');
    }
  },
  beforeRouteUpdate(to, from, next) {
    this.$store.commit('flash/end');
    this.$store.commit('awsaccounts/changeEditStatus');
    next();
  }
};
</script>
