<template>
  <div id="trusted-by-strip">
    <h4 class="heading">Trusted by businesses like</h4>
    <div class="trusted-images">
      <div class="img-wrapper"><img src="/images/paystack 1.svg" alt="" /></div>
      <div class="img-wrapper">
        <img src="/images/List-of-Zenith-Bank-Branches-in-Abuja 1.svg" alt="" />
      </div>
      <div class="img-wrapper"><img src="/images/images 1.svg" alt="" /></div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";
#trusted-by-strip {
  padding: 32px var(--body-padding-x);
  background: $primary-color;
  color: $light-color;

  .heading {
    @include heading-5;
    margin-bottom: 28px;
  }

  .trusted-images {
    display: flex;
    gap: 2rem;
    flex-wrap: wrap;
  }

  .img-wrapper {
    height: 80px;
    img {
      height: 100%;
      width: auto;
      object-fit: contain;
    }
  }
}
</style>