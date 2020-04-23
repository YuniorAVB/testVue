<template>
  <div class="card" >
    <div class="card__header">
      <span class="card__header__destacado">DESTACADO</span>
      <img class="card__header__img" src="../assets/logo.png" alt />
      <span
        @click="favorite =!favorite"
        class="card__header__favorite material-icons"
      >{{isFavoriteItem}}</span>
    </div>
    <router-link class="card__link" to="/">
      <div class="card__body">
        <span class="card__body__precio">S/. 65000</span>
        <span class="card__body__descripcion">2 Dor. - 1 Bñ. - 120 m2</span>
        <span class="card__body__nombre">CHINCHA ALQUILO DEPARTAMENTO</span>
      </div>
    </router-link>
    <div class="card__footer">
      <span class="card__footer_location">CHINCHA, ICA</span>
      <span class="card__footer_fecha">HOY</span>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      favorite: false
    };
  },
  methods: {},
  computed: {
    isFavoriteItem() {
      return this.favorite ? "favorite" : "favorite_border";
    }
  }
};
</script>

<style lang="scss" scoped>
@import "../assets/style";
.card {
  background-color: transparent;
  position: relative;
  border: 1px solid $color-secondary2;
  padding: 4px 8px;

  .card__header {
    display: flex;
    position: relative;
    @include display-center();
    .card__header__img {
      max-width: 100%;
      width: 80%;
    }
    .card__header__destacado {
      position: absolute;
      top: 25px;
      left: 25px;
      font-family: $font-family;
      background-color: yellow;
      font-size: 11px;
      font-weight: bold;
      padding: 3px;
    }
    .card__header__favorite {
      position: absolute;
      top: 25px;
      right: 25px;
      color: red;
      cursor: pointer;
    }
  }
  .card__link {
    text-decoration: none;
    color: $color-secondary;
    .card__body {
      .card__body__precio {
        display: block;
        padding: 5px;
        font-family: $font-family;
        font-weight: 700;
      }
      .card__body__descripcion {
        display: block;
        padding: 5px;
        font-family: $font-family;
        font-size: 13px;
        font-weight: 450;
      }
      .card__body__nombre {
        display: block;
        padding: 5px;
        font-family: $font-family;
        color: $color-secondary2;
        font-size: 15px;
      }
    }
  }

  .card__footer {
    @include display-center(space-between);
    font-family: $font-family;
    font-size: 11px;
    padding: 5px;
    color: $color-secondary2;
  }
}
</style>