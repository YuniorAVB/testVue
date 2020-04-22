<template>
  <div class="modallogin">
    <form @submit.prevent method="post">
      <span @click="isToggleModalLogin" class="material-icons">clear</span>
      <img src="../assets/logo.png" alt />
      <button>CONTINUAR CON GOOGLE</button>
      <button>CONTINUAR CON FACEBOOK</button>
      <router-link to="/registrar">REGISTRARSE EN OLX</router-link>
    </form>
    <div class="asb">
      <router-view name="registrar"></router-view>
    </div>
  </div>
</template>

<script>
export default {
  name: "ModalLogin",
  methods: {
    isToggleModalLogin() {
      this.$emit("toggleModalLogin", false);
    }
  }
};
</script>

<style lang="scss" scoped>
@import "../assets/style";
.asb {
  background-color: tomato;
  height: 50%;
  position: absolute;
  width: 100%;
  top: 0;
}
.modallogin {
  width: 100vw;
  height: 100vh;
  top: 0;
  left: 0;
  position: fixed;
  background-color: rgba(0, 0, 0, 0.7);
  @include display-center(center);
  z-index: 999;

  form {
    width: 300px;
    min-width: 250px;
    margin: 0 auto;
    height: 400px;
    background-color: white;
    position: relative;
    @include display-center(center);
    flex-direction: column;
    padding: 10px;
    a {
      width: 100%;
      padding: 10px 0;
      margin: 5px 5px;
      text-align: center;
      text-decoration: none;
      border: solid 2px $color-primary;
      color: $color-primary;
      font-family: $font-family;
      font-size: 15px;
      cursor: pointer;
      font-weight: 700;
      &:hover {
        background-color: rgba(42, 101, 234, 0.36);
      }
    }
    button {
      width: 100%;
      padding: 10px;
      margin: 5px 5px;
      border: solid 2px $color-primary;
      color: $color-primary;
      font-family: $font-family;
      font-size: 15px;
      cursor: pointer;
      font-weight: 700;
      &:hover {
        background-color: rgba(42, 101, 234, 0.36);
      }
    }
    span {
      position: absolute;
      top: 0;
      right: 0;
      z-index: 999;
      padding: 15px;
      font-weight: 700;
      font-size: 25px;
      cursor: pointer;
    }
  }
}
</style>