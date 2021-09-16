<template>
  <div id="authenticated-layout">
      <side-nav />
      <div id="layout-content">
        <Nuxt />
      </div>
  </div>
</template>

<script lang="ts">
import {Vue, Component} from "nuxt-property-decorator"
import SideNav from "~/components/authenticated/SideNav.vue";

@Component({
  components: { SideNav },

})
export default class AuthenticatedLayout extends Vue {

}
</script>

<style lang="scss">
@import "~assets/styles/shadows";

#authenticated-layout {
    padding: 40px 24px;
    display: flex;
    gap: 1.5rem;
    min-height: 100vh;
    max-height: 100vh;
    //  > * {
    //     height: 100%;
    // }

    #layout-content {
        flex: 1;
        background: white;
        box-shadow: $shadow-soft;
        border-radius: 10px;
        overflow: hidden;
    }
}
</style>