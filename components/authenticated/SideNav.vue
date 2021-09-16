<template>
  <nav id="sidenav">
    <header class="p-8">Oyinbo David Bayode Lorem ipsum dolor sit amet.</header>
    <div class="content p-8">
      <h6 class="paragraph-regular text-bf">Navigation</h6>
      <nav class="paragraph-regular d-flex flex-column mt-10 gap-4">
        <a href="/home" class="active nav-item"
          ><i class="fas fa-home mr-3"></i>All Cards</a
        >
        <a href="/home" class="nav-item"><i class="fas fa-credit-card mr-3"></i>Add Card</a>
        <div class="hr"></div>
        <a href="/home" class="nav-item logout"><i class="fas fa-home mr-3"></i>Logout</a>
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

      &.logout {
          color: $secondary-color;
      }
  }
}
</style>