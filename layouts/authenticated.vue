<template>
  <div id="authenticated-layout">
    <div
      id="side-nav-container"
      ref="navContainer"
      :class="{ active: sideBarOn }"
    >
    <span class="menu-button close" @click="sideBarOn = false"
        ><i class="fas fa-times"></i> </span>
      <div class="backdrop" @click="sideBarOn = false"></div>
      <side-nav />
    </div>
    <div id="layout-content">
      <span class="menu-button" @click="sideBarOn = true"
        ><i class="fas fa-bars"></i
      ></span>
      <Nuxt />
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component, Watch } from "nuxt-property-decorator";
import SideNav from "~/components/authenticated/SideNav.vue";

@Component({
  components: { SideNav },
})
export default class AuthenticatedLayout extends Vue {
  sideBarOn: boolean = false;

  @Watch("$route")
  routeChange() {
    this.sideBarOn = false
  }
}
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/shadows";

#authenticated-layout {
  padding: 12px 8px;
  @media only screen and (min-width: 768px) {
    padding: 12px 24px;
  }
  display: flex;
  gap: 1.5rem;
  min-height: 100vh;
  max-height: 100vh;
  .menu-button {
    padding: 1rem;
    display: inline-block;
    cursor: pointer;
    @media only screen and (min-width: 768px) {
      display: none;
    }
  }
  #layout-content {
    flex: 1;
    background: white;
    box-shadow: $shadow-soft;
    border-radius: 10px;
    overflow: hidden;
  }

  #side-nav-container {
    position: fixed;
    top: 12px;
    bottom: 12px;
    // right: 100%;
    left: -250px;
    z-index: 10;
    width: 250px;
    transition: all 0.2s ease-in-out;

    .menu-button.close {
      position: absolute;
      top: 0;
      left: calc(100% + 5px);
      background: $secondary-color-2;
      border-radius: 50%;
      padding: 0;
      height: 40px;
      width: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      display: none;
    }
    .backdrop {
      position: fixed;
      top: 0;
      bottom: 0;
      right: 0;
      left: 0;
      background: rgb(0 0 0 / 70%);
      z-index: -1;
      opacity: 0;
      pointer-events: none;
      transition: all 0.2s ease-in-out;
    }
    @media only screen and (min-width: 768px) {
      width: unset;
      position: initial;
      display: block;

      .backdrop {
        display: none;
      }
    }

    &.active {
      left: 12px;
      .backdrop {
        opacity: 1;
        pointer-events: initial;
      }

      .menu-button.close {
      position: absolute;
      top: 0;
      left: calc(100% + 5px);
      background: $secondary-color-2;
      border-radius: 50%;
      padding: 0;
      height: 40px;
      width: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      display: inline-flex;
    }
    }
  }
}
</style>