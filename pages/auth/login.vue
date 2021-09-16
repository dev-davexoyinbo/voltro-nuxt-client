<template>
  <div id="auth-page">
    <form action="" class="auth-form">
      <header class="mb-6">
        <legend>Welcome to voltro secure</legend>
        <p class="paragraph-small">Welcome back, please log into your account.</p>
      </header>
      <div class="hr mb-10"></div>
      <div class="form-group mb-8">
          <label for="">Email Address</label>
          <input type="email" class="form-control" placeholder="jane.doe@email.com">
      </div>
      <div class="form-group mb-8">
          <label for="">Password</label>
          <input type="password" class="form-control" placeholder="***************">
      </div>
      <p class="d-flex align-items-center mb-10">
          <input type="checkbox">
          &nbsp;<span class="paragraph-small">Stay logged in</span>
      </p>
      <button type="submit" class="mb-8">LOGIN</button>

      <span class="paragraph-small">Do not have an account? <nuxt-link to="/auth/register">Click here to sign up</nuxt-link></span>
    </form>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";

@Component({
  layout: "default",
})
export default class LoginPage extends Vue {}
</script>

<style lang="scss">
@import "~assets/styles/forms/authentication_forms";

</style>