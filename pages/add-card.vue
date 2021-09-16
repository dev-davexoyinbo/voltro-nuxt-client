<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center shadow-hard">
      <span>ADD CARDS</span>
    </header>

    <div class="content">
      Add Card
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import AddCardFab from "~/components/AddCardFab.vue";
import Card from "~/components/cards/Card.vue";

@Component({
  components: { AddCardFab, Card },
  layout: "authenticated",
})
export default class HomePage extends Vue {}
</script>
