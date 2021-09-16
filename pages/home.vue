<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center shadow-hard">
      <span>ALL CARDS</span>
    </header>

    <div class="content">
      <div v-if="cards && cards.length > 0" class="card-container d-flex gap-8 flex-wrap-wrap">
        <div class="card-wrapper" v-for="card in cards" :key="card.id">
          <card :card="card" @deleted="cardDeleted($event)" />
        </div>
      </div>
      <div v-else class="empty-card d-flex align-items-center justify-content-center">
        <div class="d-flex align-items-center flex-column">
          <div class="img-wrapper empty mb-5">
            <img src="/images/empty.svg" alt="" />
          </div>
          <h4 class="heading-5 text-center mb-3">No Card Added</h4>
          <p class="paragraph-small text-center mb-4">
            Your virtual card is just a click away.
          </p>
          <button @click.prevent="$nuxt.$router.push(`/add-card`)">
            Add Card Now
          </button>
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
  middleware: ["auth"],
})
export default class HomePage extends Vue {
  cards: Array<any> = [];

  async asyncData({ $axios }) {
    console.log("==========================AsyncData==========================")
    let cards: Array<any> = [];

     await $axios.$get("/cards").then((response: any) => {
      cards = response.cards || [];
      // return cards
    });

    return {cards};
  } //end method asyncData

  cardDeleted (val: any) {
    let index = this.cards.findIndex(el => el.id == val)

    if(index >= 0) {
      this.cards.splice(index, 1)
    }
  }
} //end class HomePage
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
  .img-wrapper.empty {
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

