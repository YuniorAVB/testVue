<template>
  <div id="app">
    <div id="header">
      <Navbar />
    </div>

    <div id="main">
      <Categorias />
      <router-view name="main" />
    </div>

    <div id="footer"></div>
  </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Categorias from "./components/Categorias";

export default {
  components: {
    Navbar,
    Categorias
  }
};
</script>

<style lang="scss">
#app {
  max-width: 1250px;
  margin: 0 auto;
  position: relative;
}
#header{
  position:sticky;
  background-color:white;
  top: 0;
  z-index: 999;
  width: 100%;
}
</style>
