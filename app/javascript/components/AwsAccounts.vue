<template>
  <div>
    <div>
      <va-table></va-table>
    </div>
  </div>
</template>

<script>
import VATable from './Table.vue'
export default {
  name: 'AwsAccounts',
  components: {
    'va-table' : VATable
  }
}
</script>
