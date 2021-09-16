<template>
  <div id="auth-page">
    <form ref="form" action="" class="auth-form" @submit.prevent="submit">
      <header class="mb-6">
        <legend>Welcome to voltro secure</legend>
        <p class="paragraph-small">Welcome back, please log into your account.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">Email Address</label>
          <input :class="{error: !!errorMessage}" name="email" type="email" class="form-control" placeholder="jane.doe@email.com" required>
      </div>
      <div class="form-group mb-8">
          <label for="">Password</label>
          <input :class="{error: !!errorMessage}" name="password" type="password" class="form-control" placeholder="***************" required>
      </div>
      <p class="d-flex align-items-center mb-10">
          <input type="checkbox">
          &nbsp;<span class="paragraph-small">Stay logged in</span>
      </p>
      <div class="text-error mb-10" v-if="errorMessage"><small>{{errorMessage}}</small></div>
      <button type="submit" :disabled="loading" class="mb-8">LOGIN</button>

      <span class="paragraph-small">Do not have an account? <nuxt-link to="/auth/register">Click here to sign up</nuxt-link></span>
    </form>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";

@Component({
  layout: "default",
  middleware: ["auth"],
  auth: "guest",
})
export default class LoginPage extends Vue {
  errorMessage: string = "";
  loading: boolean = false;

  submit() {
    event?.preventDefault()

    if(this.loading) return
    this.loading = true
    this.errorMessage = ""

    const form = this.$refs.form as HTMLFormElement
    const formData = new FormData(form)

    this.$auth.loginWith("local", {data: formData})
    .catch(e => {
      if(e && e.response && e.response.data && e.response.data.message)
      {
        this.errorMessage = e.response.data.message
      }else {
        this.errorMessage = "An error occured"
      }
    }).finally(() => {
      this.loading = false
    })
  } //end method submit
}//end class LoginPage
</script>
