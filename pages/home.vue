<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center">
      <span>ALL CARDS</span>
    </header>
    <add-card-fab />
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import AddCardFab from "~/components/AddCardFab.vue";

@Component({
  components: { AddCardFab },
  layout: "authenticated",
})
export default class HomePage extends Vue {}
</script>

<style lang="scss">
@import "~assets/styles/variables";
#authenticated-page {
  --padding-x: 1rem;
  header {
    height: 50px;
    padding: 0 var(--padding-x);
    background: $secondary-color;
    color: white;
  }
}
</style>