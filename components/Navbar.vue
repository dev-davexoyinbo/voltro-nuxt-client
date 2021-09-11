<template>
  <nav id="navbar" class="shadow-hard">
    <div class="brand">
      <div class="logo-wrapper">
        <img src="/logo.svg" alt="" />
      </div>
      <h6 class="brand-text heading-6">voltro secure</h6>
    </div>
    <div class="open-nav paragraph-large" @click="open = true">
      <i class="fas fa-bars"></i>
    </div>
    <div class="navigation" :class="{ open: open }">
      <div class="close-nav paragraph-large" @click="open = false">
        <i class="fas fa-times"></i>
      </div>
      <a href="/" class="nav-item" @click="gotoPage(`/`)">Home</a>
      <a href="#" class="nav-item">Pricing</a>
      <a href="#app-footer" class="nav-item">Contact</a>
      <a href="/about" class="nav-item" @click="gotoPage(`/about`)">About</a>
      <a href="#" class="nav-button rounded shadow-soft">Sign up</a>
    </div>
  </nav>
</template>

<script lang="ts">
import {Vue, Component} from "nuxt-property-decorator";

@Component({})
export default class Navbar extends Vue {
  open: boolean = false;

  gotoPage (path: string) {
    event?.preventDefault()
    this.$nuxt.$router.push(path)
  }
};
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
  height: calc(#{$navbar-height} + 1px);
  padding: 0 var(--body-padding-x);
  color: $light-color;
  display: flex;
  align-items: center;
  justify-content: space-between;

  .open-nav,
  .close-nav {
    @media only screen and (min-width: 768px) {
      display: none;
    }
  }

  .close-nav {
      margin-bottom: 1rem;
      border-bottom: 1px solid $secondary-color;
      padding: 0.5rem 0;
  }

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
    --width: 200px;
    position: fixed;
    top: 0;
    bottom: 0;
    right: calc(-1 * var(--width));
    width: 200px;
    background: $primary-color;
    box-shadow: $shadow-soft;
    display: flex;
    flex-direction: column;
    padding: 2rem 1rem;
    gap: 0.5rem;

    transition: right 0.2s ease-in;

    &.open {
      right: 0;
    }

    @media only screen and (min-width: 768px) {
      padding: unset;
      box-shadow: unset;
      position: unset;
      flex-direction: row;
      width: unset;
      gap: 40px;
      align-items: center;
      height: 100%;
      background: none;
    }
  }

  .nav-item {
    @include paragraph-regular;
    color: white;
    text-decoration: none;
    text-transform: uppercase;

    display: flex;
    align-items: center;
    border-bottom: 2px solid $accent-color;
    border-bottom-color: transparent;

    @media only screen and (min-width: 768px) {
      height: 100%;
    }

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
    max-width: 100%;
  }
}
</style>