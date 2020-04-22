<template>
  <header class="header">
    <nav class="navbar">
      <div class="container-logo">
        <router-link to="/">
          <img class="img-logo" src="../assets/logo.png" />
        </router-link>
      </div>

      <div class="container-search">
        <div
          class="container-search-location"
          @click="isToggleContainerSearch=!isToggleContainerSearch"
        >
          <span class="material-icons">search</span>
          <input type="text" />
          <span
            class="material-icons"
            :class="{'active-container-search-toggle':isToggleContainerSearch}"
          >keyboard_arrow_down</span>
          <div class="container-search-toggle" v-show="isToggleContainerSearch"></div>
        </div>

        <div class="container-search-product">
          <div class="container-input-search">
            <input type="text" />
          </div>
          <div class="container-btn-search">
            <span class="material-icons">search</span>
          </div>
        </div>
      </div>

      <div class="container-login" @click="isStateModalLogin=!isStateModalLogin">
        <button for>INGRESAR</button>
        <button for>VENDER</button>
      </div>
    </nav>

    <ModalLogin v-show="isStateModalLogin" @toggleModalLogin="isToggleModalLogin" />
  </header>
</template>

<script>
import ModalLogin from "./ModalLogin.vue";
export default {
  name: "Navbar",
  data() {
    return {
      isToggleContainerSearch: false,
      isStateModalLogin: false
    };
  },
  methods: {
    isToggleModalLogin(state) {
      this.isStateModalLogin = state;
    }
  },
  components: {
    ModalLogin
  }
};
</script>

<style lang="scss" scoped>
@import "../assets/style";

.header {
  height: 60px;
  max-width: 1250px;
  background-color: white;
  @include display-center(space-between);
  .navbar {
    width: 100%;
    display: grid;
    grid-template-columns: repeat(12, 1fr);
    .container-logo {
      background-color: white;
      grid-column: span 1;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 50px;
      .img-logo {
        width: 50px;
        height: 50px;
      }
    }
    .container-search {
      grid-column: span 7;
      position: relative;
      @include display-center(space-between);
      .container-search-location {
        height: 45px;
        border: 1px solid black;
        width: 30%;
        position: relative;
        @include display-center(space-between);
        span {
          color: $color-secondary;
          font-size: 35px;
          cursor: pointer;
          transition: all 300ms ease;
        }
        input[type="text"] {
          border: none;
          outline: none;
          font-size: 16px;
          width: 100%;
        }
        .container-search-toggle {
          height: 200px;
          background-color: tomato;
          position: absolute;
          z-index: 999;
          width: 100%;
          top: calc(100% + 1px);
        }
        .active-container-search-toggle {
          transform: rotateZ(180deg);
        }
      }
      .container-search-product {
        height: 45px;
        width: 70%;
        margin-left: 10px;
        @include display-center(space-between);
        .container-input-search {
          height: 45px;
          border: 1px solid black;
          width: calc(100% - 50px);
          @include display-center(center);
          input[type="text"] {
            font-size: 16px;
            width: 100%;
            border: none;
            outline: none;
            margin-left: 10px;
          }
        }
        .container-btn-search {
          min-width: 50px;
          max-width: 50px;
          background-color: $color-primary;
          color: white;
          height: 47px;
          @include display-center(center);
          span {
            font-size: 35px;
            cursor: pointer;
          }
        }
      }
    }

    .container-login {
      grid-column: span 4;
      position: relative;
      @include display-center(space-between);
      button {
        text-align: center;
        width: 50%;
        height: 47px;
        border: none;
        font-size: 18px;
        font-weight: 700;
        font-family: $font-family;
        color: $color-primary;
        outline: none;
        &:hover {
          opacity: 0.8;
          cursor: pointer;
        }
      }

      :nth-child(2) {
        background-color: $color-primary;
        color: white;
      }
    }
  }
}
</style>