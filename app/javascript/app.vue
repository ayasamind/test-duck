<!-- 全体のテンプレートファイル -->
<template>
  <div id="app">
    <Header></Header>
    <Sidebar></Sidebar>
    <div id="content-wrap" class="content-wrapper">
      <section class='content'>
        <transition mode='out-in' appear>
          <router-view :key="$route.fullPath"></router-view>
        </transition>
      </section>
    <loading />
    </div>
  </div>
</template>

<style>
.v-enter-active {
  transition: all .3s ease;
}
.v-leave-active {
  transition: all .3s cubic-bezier(1.0, 0.5, 0.8, 1.0);
}
.v-enter, .v-leave-to {
  transform: translateX(25px);
  opacity: 0;
}
</style>

<script>
import Header from './components/Header.vue';
import Sidebar from './components/Sidebar.vue';
import Loading from './components/Loading.vue';

export default {
  name: 'app',
  components: {
    Header,
    Sidebar,
    Loading,
  },
};
</script>
