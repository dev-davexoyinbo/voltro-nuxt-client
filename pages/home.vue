<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center">
      <span>ALL CARDS</span>
    </header>

    <div class="content">
      <div class="card-container d-flex gap-8 flex-wrap-wrap">
        <div class="card-wrapper" v-for="i in 3" :key="i">
          <card />
        </div>
      </div>
    </div>



    <add-card-fab />
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import AddCardFab from "~/components/AddCardFab.vue";
import Card from "~/components/cards/Card.vue";

@Component({
  components: { AddCardFab, Card, },
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

  .content {
    padding: var(--padding-x);
  }
}
</style>