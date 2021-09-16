<template>
  <div id="authenticated-layout">
    <div id="side-nav-container">
      <div class="backdrop"></div>
      <side-nav />
    </div>
    <div id="layout-content">
      <Nuxt />
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import SideNav from "~/components/authenticated/SideNav.vue";

@Component({
  components: { SideNav },
})
export default class AuthenticatedLayout extends Vue {}
</script>

<style lang="scss">
@import "~assets/styles/shadows";

#authenticated-layout {
  padding: 12px 24px;
  display: flex;
  gap: 1.5rem;
  min-height: 100vh;
  max-height: 100vh;
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
    left: 0;
    z-index: 10;
    .backdrop {
      position: fixed;
      top: 0;
      bottom: 0;
      right: 0;
      left: 0;
      background: rgb(0 0 0 / 70%);
      z-index: -1;
    }
    display: none;
    @media only screen and (min-width: 768px) {
      position: initial;
      display: block;

      .backdrop {
        display: none;
      }
    }
  }
}
</style>