<template>
  <div class="categorias">
    <div class="categorias__todas" v-on:click="isToggleLista=!isToggleLista">
      <span class="categorias__todas__titulo">TODAS LAS CATEGORIAS</span>
      <span
        :class="{'categorias__todas__icono__active':isToggleLista}"
        class="categorias__todas__icono material-icons"
      >keyboard_arrow_down</span>
    </div>

    <div class="categorias__lista">
      <span class="categorias__lista__item">Autos</span>
      <span class="categorias__lista__item">Autos</span>
      <span class="categorias__lista__item">Autos</span>
      <span class="categorias__lista__item">Autos</span>
      <span class="categorias__lista__item">Autos</span>
    </div>

    <div class="categorias__toggle" v-show="isToggleLista"></div>
  </div>
</template>

<script>
export default {
  name: "Categorias",
  data() {
    return {
      isToggleLista: false
    };
  }
};
</script>


<style lang="scss" scoped>
@import "../assets/style";
.categorias {
  padding: 5px 0;
  height: 50px;
  background-color: transparent;
  width: 100%;
  position: relative;
  font-family: $font-family;
  @include display-center(space-between);
  .categorias__toggle {
    position: absolute;
    background-color: yellow;
    width: 100%;
    height: 300px;
    top: 100%;
    z-index: 999;
  }
  .categorias__lista {
    .categorias__lista__item {
      padding: 0 5px;
      font-size: 15px;
    }
  }

  .categorias__todas {
    @include display-center(space-between);
    cursor: pointer;
    .categorias__todas__titulo {
      font-size: 15px;
      font-weight: bold;
    }
    .categorias__todas__icono {
      padding: 0 5px;
      font-size: 30px;
      font-weight: bold;
      transition: all 300ms ease;
    }
    .categorias__todas__icono__active {
      transform: rotateZ(180deg);
    }
  }
}
</style>