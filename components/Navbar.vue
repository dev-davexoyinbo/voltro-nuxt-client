<template>
  <nav id="navbar" class="shadow-hard">
      <div class="brand">
          <div class="logo-wrapper">
              <img src="/logo.svg" alt="">
          </div>
          <h6 class="brand-text heading-6">voltro secure</h6>
      </div>
      <div class="navigation">
          <a href="#" class="nav-item">Home</a>
          <a href="#" class="nav-item">Pricing</a>
          <a href="#" class="nav-item">Contact</a>
          <a href="#" class="nav-item">About</a>
          <a href="#" class="nav-button rounded shadow-soft">Sign up</a>
      </div>
  </nav>
</template>

<script>
export default {

}
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";
@import "~assets/styles/shadows";

#navbar {
    position: sticky;
    top: -1px;
    z-index: 10;
    background: $primary-color;
    height: $navbar-height;
    padding: 0 var(--body-padding-x);
    color: $light-color;
    display: flex;
    align-items: center;
    justify-content: space-between;


    .brand {
        display: flex;
        align-items: center;
        gap: 1rem;
        .logo-wrapper {
            height: 41px;
            width: 41px;
            img {
                height: 100%;
                width: 100%;
                object-fit: contain;
                object-position: center center;
            }
        }
    }

    .navigation {
        display: flex;
        gap: 40px;
        align-items: center;
        height: 100%;
    }

    .nav-item {
        @include paragraph-regular;
        color: white;
        text-decoration: none;
        text-transform: uppercase;
        height: 100%;
        display: flex;
        align-items: center;
        border-bottom: 2px solid $accent-color;
        border-bottom-color: transparent;

        &:hover {
            border-bottom-color: $accent-color;
            color: $accent-color;
        }
    }

    .nav-button {
        @include paragraph-large;
        color: white;
        text-decoration: none;
        padding: 5px 15px;
        background: $primary-color-2;
    }
}
</style>