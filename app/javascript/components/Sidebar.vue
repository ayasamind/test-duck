<template>
  <aside class="main-sidebar">
    <section class="sidebar" style="height: auto;">
      <ul class="sidebar-menu tree" data-widget="tree">
        <li class="header">メニュー</li>
        <li>
          <router-link to='/' class='logo'>
            アカウント一覧
          </router-link>
        </li>
        <li>
          <router-link to='CreateAwsAccounts' class='logo'>
            アカウント新規作成
          </router-link>
        </li>
      </ul>
    </section>
  </aside>
</template>

<script>
export default {
  name: 'Sidebar',
}
</script>
