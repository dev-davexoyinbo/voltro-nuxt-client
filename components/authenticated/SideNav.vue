<template>
  <nav id="sidenav">
    <header class="p-8">Oyinbo David Bayode Lorem ipsum dolor sit amet.</header>
    <div class="content p-8">
      <h6 class="paragraph-regular text-bf">Navigation</h6>
      <nav class="paragraph-regular d-flex flex-column mt-10 gap-4">
        <a
          href="/home"
          @click.prevent="$nuxt.$router.push(`/home`)"
          class="nav-item"
          :class="{
            active: $nuxt.$route.path == `/home`
          }"
          ><i class="fas fa-home mr-3"></i>All Cards</a
        >
        <a
          href="/add-card"
          @click.prevent="$nuxt.$router.push(`/add-card`)"
          class="nav-item"
          :class="{
            active: $nuxt.$route.path == `/add-card`
          }"
          ><i class="fas fa-credit-card mr-3"></i>Add Card</a
        >
        <div class="hr"></div>
        <a href="#" class="nav-item logout" @click.prevent="$auth.logout()"
          ><i class="fas fa-sign-out-alt mr3"></i>Logout</a
        >
      </nav>
    </div>
  </nav>
</template>

<script>
export default {};
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/shadows";
@import "~assets/styles/topography";

#sidenav {
  width: 250px;
  background: white;
  box-shadow: $shadow-soft;
  border-radius: 10px;
  overflow: hidden;
  height: 100%;
  a {
    color: currentColor;
    text-decoration: none;
  }
  header {
    background: $primary-color;
    color: white;
    @include paragraph-large;
    font-weight: bold;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .nav-item {
    color: $text-color-2;

    &.active {
      color: $primary-color;
    }
    &.logout {
      color: $secondary-color;
    }
    &:hover {
      // color: color.scale($primary-color, $blackness: 15%);
      color: darken($primary-color, 10%);
      color: $primary-color-2;
    }
  }
}
</style>