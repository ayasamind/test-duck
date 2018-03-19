<template>
  <aside class="main-sidebar">
    <section class="sidebar" style="height: auto;">
      <ul class="sidebar-menu tree" data-widget="tree">
        <li class="header">メニュー</li>
        <li>
          <router-link to='/' class='logo'>
            <i class="fa fa-list-ul"></i>
            <span>アカウント一覧</span>
          </router-link>
        </li>
        <li>
          <router-link v-bind:to="{name: 'CreateAwsAccounts'}" class='logo'>
            <i class="fa fa-plus"></i>
            <span>アカウント新規作成</span>
          </router-link>
        </li>
      </ul>
    </section>
  </aside>
</template>

<script>
export default {
  name: 'Sidebar',
};
</script>
