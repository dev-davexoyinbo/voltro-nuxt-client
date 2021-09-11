<template>
  <div id="hero">
    <div class="content">
      <h1 class="heading heading-1">Voltro Secure</h1>
      <p class="hero-brief">
        If security if of high priority, you’re in the right place.
      </p>
      <div class="btn-container">
        <button class="btn btn-gs shadow-soft">Get Started</button>
        <button class="btn btn-p shadow-soft">Products</button>
      </div>
    </div>

    <div class="img-wrapper-1">
      <img src="/images/card.svg" alt="" />
    </div>

    <div class="img-wrapper-2">
      <img src="/images/All cards 1.svg" alt="" />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";

#hero {
  height: calc(100vh - #{$navbar-height});
  position: relative;
  padding: 0 calc(var(--body-padding-x));
  display: flex;
  align-items: center;
  overflow: hidden;

  &::before {
    content: "";
    clip-path: polygon(100% 0, 100% 24%, 38% 100%, 0 100%, 0 0);
    background: $primary-color;
    background: linear-gradient(
      180deg,
      #044395 0%,
      #044395 36.46%,
      rgba(4, 67, 149, 0.663934) 63.54%,
      rgba(4, 67, 149, 0.512178) 80.21%,
      rgba(4, 67, 149, 0) 100%
    );
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 0;
  }

  

  .img-wrapper-1 {
    animation-name: up-and-down;
    animation-duration: 8s;
    animation-delay: -2s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;
    z-index: 2;
    position: absolute;
    right: 12%;
    bottom: 10%;
    width: 350px;
    height: 180px;

    display: none;
    @media only screen and (min-width: 768px) {
      display: block;
    }

    @media only screen and (min-width: 1024px) {
      right: 22%;
      bottom: 15%;
      width: 450px;
      height: 250px;
    }
    img {
      height: 100%;
      width: 100%;
      object-fit: contain;
    }
  }

  .img-wrapper-2 {
    z-index: 1;
    position: absolute;
    right: -10%;
    bottom: 25%;
    width: 500px;
    height: 300px;
    animation-name: up-and-down;
    animation-duration: 8s;
    animation-delay: 0s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-in-out;
    display: none;
    @media only screen and (min-width: 768px) {
      display: block;
    }

    @media only screen and (min-width: 1024px) {
      right: -5%;
      bottom: 25%;
      width: 670px;
      height: 375px;
    }
    img {
      height: 100%;
      width: 100%;
      object-fit: contain;
    }
  }

  .content {
    color: white;

    transform: translateY(-2rem);

    .heading {
      margin-bottom: 1rem;
    }
    .hero-brief {
      max-width: 357px;
      font-style: normal;
      font-weight: 400;
      font-size: 27.65px;
      line-height: 36px;
      margin-bottom: 3rem;
    }

    .btn-container {
      display: flex;
      align-items: center;
      gap: 2rem;
    }

    .btn {
      @include paragraph-regular;
      border: none;
      background: $primary-color;
      padding: 10px 15px;
      border-radius: 5px;
      color: white;
      cursor: pointer;
    }

    .btn.btn-gs {
      background: $accent-color;
    }
  }
}
</style>