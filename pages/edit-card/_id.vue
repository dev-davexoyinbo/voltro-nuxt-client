<template>
  <div id="authenticated-page">
    <header class="d-flex align-items-center shadow-hard">
      <span>Edit CARDS</span>
    </header>

    <div class="content">
      <form ref="form" @submit.prevent="submit" action="" class="auth-form">
      <header class="mb-6">
        <legend>Edit Card</legend>
        <p class="paragraph-small">Secure your card with voltro secure.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">Name</label>
          <input type="text" class="form-control" placeholder="jane.doe@email.com" required name="name" :value="card.name">
      </div>
      <div class="form-group mb-8">
          <label for="">Card Number (16 digits)</label>
          <input type="number" min="1000000000000000" max="9999999999999999" class="form-control" placeholder="0000000000000000" required name="card_number" :value="card.card_number">
      </div>
      <div class="form-group mb-12">
          <label for="">Expiration Date (MM/YY)</label>
          <div class="d-flex gap-2">
            <input type="number" min="1" max="99" class="form-control exp-date" placeholder="00" required name="expiration_month" :value="card.expiration_month">
            <input type="number"  min="1" max="99" class="form-control exp-date" placeholder="00" required name="expiration_year" :value="card.expiration_year">
          </div>
      </div>
      <div class="text-error mb-10" v-if="errorMessage">
          <small>{{ errorMessage }}</small>
        </div>
      <button type="submit" :disabled="loading" class="">SUBMIT CARD</button>

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
  middleware: ["auth"],
})
export default class EditCardPage extends Vue {
  card: any = {};
  loading: boolean = false;
  errorMessage: string = "";

  //@ts-ignore
  async asyncData({$axios, params}) {
    let card: any = {};

    await $axios.$get(`/cards/${params.id}`)
    .then((response: any) => {
      card = response.card
    });

    return {card};
  }//end method asyncData

  submit() {
    event?.preventDefault();

    if (this.loading) return;
    this.loading = true;
    this.errorMessage = "";

    const form = this.$refs.form as HTMLFormElement;
    const formData = new FormData(form);

    this.$axios
      .$post(`/cards/${this.card.id}/edit`, formData)
      .then(response => {
        this.$nuxt.$router.push("/home")
      })
      .catch((e) => {
        if (e && e.response && e.response.data && e.response.data.message) {
          this.errorMessage = e.response.data.message;
        } else {
          this.errorMessage = "An error occured";
        }
      })
      .finally(() => {
        this.loading = false;
      });
  } //end method submit
}
</script>

<style scoped lang="scss">
.form-control.exp-date {
  width: 5rem;
}
</style>