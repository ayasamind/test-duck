<template>
  <header class="main-header">
    <!-- Logo -->
    <router-link to='/' class='logo'>
      <span class="logo-lg">
        Captain-Duck
      </span>
    </router-link>

    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'Header',
}
</script>
