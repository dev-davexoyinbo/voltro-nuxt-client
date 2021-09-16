<template>
  <div id="auth-page">
    <form action="" class="auth-form">
      <header class="mb-6">
        <legend>Welcome to voltro secure</legend>
        <p class="paragraph-small">Join the team of secure card holders.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">First Name</label>
          <input type="text" class="form-control" placeholder="Jane">
      </div>
      <div class="form-group mb-8">
          <label for="">Last Name</label>
          <input type="text" class="form-control" placeholder="Doe">
      </div>
      <div class="form-group mb-8">
          <label for="">Email Address</label>
          <input type="email" class="form-control" placeholder="jane.doe@email.com">
      </div>
      <div class="form-group mb-8">
          <label for="">Phone Number</label>
          <input type="text" class="form-control" placeholder="+0000000000000000">
      </div>
      <div class="form-group mb-8">
          <label for="">Password</label>
          <input type="password" class="form-control" placeholder="***************">
      </div>
      <div class="form-group mb-15">
          <label for="">Password Confirmation</label>
          <input type="password" class="form-control" placeholder="***************">
      </div>

      <button type="submit" class="mb-10">SIGN UP</button>

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
export default class RegisterPage extends Vue {}
</script>
