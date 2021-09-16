<template>
  <button class="add-card-fab" @click="$nuxt.$router.push(`/add-card`)">
    <i class="fas fa-plus"></i>
  </button>
</template>

<script>
export default {};
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";
@import "~assets/styles/shadows";

.add-card-fab {
  @include heading-6;
  background: $primary-color-2;
  border: none;
  color: white;
  height: 60px;
  width: 60px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  outline: none;

  position: fixed;
  right: 3rem;
  bottom: 3rem;
  box-shadow: $shadow-soft;
}
</style>