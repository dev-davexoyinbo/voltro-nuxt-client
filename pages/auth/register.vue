<template>
  <div id="auth-page">
    <form action="" class="auth-form" @submit.prevent="submit" ref="form">
      <header class="mb-6">
        <legend>Welcome to voltro secure</legend>
        <p class="paragraph-small">Join the team of secure card holders.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">First Name</label>
          <input type="text" class="form-control" placeholder="Jane" name="first_name" required>
      </div>
      <div class="form-group mb-8">
          <label for="">Last Name</label>
          <input type="text" class="form-control" placeholder="Doe" name="last_name" required>
      </div>
      <div class="form-group mb-8">
          <label for="">Email Address</label>
          <input type="email" class="form-control" placeholder="jane.doe@email.com" name="email" required>
      </div>
      <div class="form-group mb-8">
          <label for="">Phone Number</label>
          <input type="text" class="form-control" placeholder="+0000000000000000" name="phone_number" required>
      </div>
      <div class="form-group mb-8">
          <label for="">Password</label>
          <input v-model="password" type="password" class="form-control" placeholder="***************" name="password" required>
      </div>
      <div class="form-group mb-15">
          <label for="">Password Confirmation</label>
          <input :class="{error: passwordNotMatch}" v-model="passwordConfirmed" type="password" class="form-control" placeholder="***************" name="password_confirmed" required>
          <small v-if="passwordNotMatch" class="text-error">Password does not match</small>
      </div>
      <div class="text-error mb-10" v-if="errorMessage"><small>{{errorMessage}}</small></div>
      <button type="submit" :disabled="loading" class="mb-10">SIGN UP</button>

      <span class="paragraph-small">Already have an account? <nuxt-link to="/auth/login">Click here to login</nuxt-link></span>
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
export default class RegisterPage extends Vue {
  loading: boolean = false;
  password: string = "";
  passwordConfirmed: string = "";
  errorMessage: string = "";

  get passwordNotMatch(): boolean {
    return this.password != this.passwordConfirmed;
  }

  submit(){
    event?.preventDefault()

    const form = this.$refs.form as HTMLFormElement
    const formData = new FormData(form)

    if(this.passwordNotMatch || this.loading){
      return
    }
    this.loading = true
    this.errorMessage = ""

    this.$axios.$post("/auth/register", formData)
    .then(response => {
      this.$nuxt.$router.push("/auth/login")
    })
    .catch(e => {
      if(e && e.response && e.response.data && e.response.data.message)
      {
        this.errorMessage = e.response.data.message
      }else {
        this.errorMessage = "An error occured"
      }
    })
    .finally(() => {
      this.loading =false
    })

  }//end submit method
}
</script>
