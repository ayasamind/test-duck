<!-- 全体のテンプレートファイル -->
<template>
  <div id="app">
    <div class="wrapper">
      <Header></Header>
      <Sidebar></Sidebar>
      <div class="content-wrapper">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>
<script>
import Header from './components/Header.vue';
import Sidebar from './components/Sidebar.vue';

export default {
  name: 'app',
  components: {
    Header,
    Sidebar,
  },
};
</script>
