<template>
    <div>
        <p>アカウント新規作成</p>
        <va-form></va-form>
    </div>
</template>

<script>
import Form from './Form'
export default {
  name: 'CreateAwsAccounts',
  components: {
    'va-form' : Form,
  }
}
</script>
