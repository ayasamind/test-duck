<template>
  <div>
    <p>アカウント編集</p>
    <va-form></va-form>
  </div>
</template>

<script>
import Form from './Form.vue';

export default {
  name: 'EditAwsAccounts',
  components: {
    'va-form': Form,
  },
  props: { id: String },
  watch: {
    id: {
      handler() {
        this.$store.dispatch('awsaccounts/editAwsAccount', this.id);
      },
      immediate: true,
    },
  },
  computed: {
    orderAccount() { return this.$store.getters['awsaccounts/orderAccount']; },
  },
};
</script>
