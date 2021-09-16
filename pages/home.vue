<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center shadow-hard">
      <span>ALL CARDS</span>
    </header>

    <div class="content">
      <div v-show="false" class="card-container d-flex gap-8 flex-wrap-wrap">
        <div class="card-wrapper" v-for="i in 3" :key="i">
          <card />
        </div>
      </div>
      <div class="empty-card d-flex align-items-center justify-content-center">
        <div class="d-flex align-items-center flex-column">
          <div class="img-wrapper empty mb-4">
            <img src="/images/empty.svg" alt="" />
          </div>
          <h4 class="heading-5 text-center mb-3">No Card Added</h4>
          <p class="paragraph-small text-center mb-4">Your virtual card is just a click away.</p>
          <button @click.prevent="$nuxt.$router.push(`/add-card`)">Add Card Now</button>
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
  components: { AddCardFab, Card },
  layout: "authenticated",
})
export default class HomePage extends Vue {}
</script>

<style lang="scss" scoped>
@import "~assets/styles/variables";

.card-wrapper {
  max-width: 100%;
}

.empty-card {
  height: 100%;
  width: 100%;
  text-align: center;
  .img-wrapper.empty{
    width: 300px;
    max-width: 80%;
    img {
      width: 100%;
      object-fit: contain;
    }
  }

  button {
    border: none;
    border-radius: 5px;
    background: $primary-color;
    color: white;
    padding: 0 1rem;
    height: 35px;
    cursor: pointer;
  }
}
</style>

