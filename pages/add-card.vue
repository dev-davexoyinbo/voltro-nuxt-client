<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center shadow-hard">
      <span>ADD CARDS</span>
    </header>

    <div class="content">
      <form action="" class="auth-form">
      <header class="mb-6">
        <legend>Add Card</legend>
        <p class="paragraph-small">Secure your card with voltro secure.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">Name</label>
          <input type="text" class="form-control" placeholder="jane.doe@email.com">
      </div>
      <div class="form-group mb-8">
          <label for="">Card Number</label>
          <input type="number" min="1000000000000000" class="form-control" placeholder="0000000000000000">
      </div>
      <div class="form-group mb-12">
          <label for="">Expiration Date (MM/YY)</label>
          <div class="d-flex gap-2">
            <input type="number" min="1" max="99" class="form-control exp-date" placeholder="00">
            <input type="number"  min="1" max="99" class="form-control exp-date" placeholder="00">
          </div>
      </div>
      <button type="submit" class="">SUBMIT CARD</button>

    </form>
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

<style scoped lang="scss">
.form-control.exp-date {
  width: 5rem;
}
</style>