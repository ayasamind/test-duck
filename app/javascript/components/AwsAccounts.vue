<template>
  <div>
    <div>
        <router-view></router-view>
    </div>
  </div>
</template>

<script>
import store from '../vuex/store'
export default {
    name: 'AwsAccounts',
    beforeRouteEnter(route, redirect, next) {
        store.dispatch('awsaccounts/load').then(() => {
            setTimeout(() => {
                next()
            }, 500)
        })
    },
}
</script>
