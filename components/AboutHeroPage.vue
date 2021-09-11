<template>
  <section id="about-hero">
    <h1 class="heading heading-1">
      Ensuring the Security and <br />
      Accessibility of Cards.
    </h1>

    <span class="icon heading-2"><i class="fas fa-angle-double-down"></i></span>
  </section>
</template>

<script>
export default {};
</script>

<style lang="scss">
@import "~assets/styles/variables";

#about-hero {
  min-height: calc(100vh - #{$navbar-height});
  background: $primary-color;
  color: white;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;

  .icon {
      position: absolute;
      bottom: 2rem;
      left: 50%;
      transform: translateX(-50%);
      animation-name: up-and-down-2;
    animation-duration: 3s;
    animation-delay: -2s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;
  }


  .heading {
      transform: translateY(calc(-1 * #{$navbar-height}));
      text-align: center;
  }
}
</style>