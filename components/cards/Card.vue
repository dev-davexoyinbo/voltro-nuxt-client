<template>
  <div class="card" :class="{viewing: viewing}">
    <div class="mb-3 brand d-flex align-items-center gap-5 justify-content-end">
      <span class="brand-text paragraph-large">voltro secure</span>
      <div class="img-wrapper">
        <img src="/logo.svg" alt="" />
      </div>
    </div>
    <div class="mb-7">
      <div class="img-wrapper sim">
        <img src="/images/sim.svg" alt="" />
      </div>
    </div>
    <div class="card-number">
      <span>XXXX XXXX XXXX X321</span>
    </div>

    <div
      class="
        validity
        d-flex
        gap-2
        align-items-center
        justify-content-center
        mt-5
        mb--10
      "
    >
      <p class="text">VALID<br />THRU</p>
      <div class="date">05/24</div>
    </div>

    <div class="name d-flex align-items-end gap-3 justify-content-between">
      <span>oyinbo david</span>
      <div class="img-wrapper issuer">
        <img src="/images/mastercard.svg" alt="" />
      </div>
    </div>

    <button class="view-button primary-light" @click="viewing = true">View <i class="fas fa-eye"></i></button>
    <div class="actions">
      <div>
        <button class="secondary" @click="viewing = false">Close <i class="fas fa-times"></i></button>
      </div>
      <div class="d-flex justify-content-end flex-wrap-wrap gap-2">
        <button>Show all details</button>
        <button class="accent" @click="gotoPage(`/edit-card/card_id`)">Edit</button>
        <button class="danger">Delete</button>
      </div>
      
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";

@Component({})
export default class Card extends Vue {
  viewing: boolean = false

  gotoPage(path: string){
    this.$nuxt.$router.push(path)
  }
}
</script>

<style lang="scss">
@import "~/assets/styles/topography";
@import "~/assets/styles/variables";
@import "~/assets/styles/shadows";
.card {
  position: relative;
  width: 400px;
  max-width: 100%;

  background: linear-gradient(
    180deg,
    rgba(202, 202, 202, 0.53) 0%,
    rgba(159, 176, 199, 0.68837) 14.58%,
    rgba(121, 147, 182, 0.76127) 22.4%,
    rgba(105, 134, 173, 0.792728) 30.21%,
    rgba(77, 111, 155, 0.843333) 45.31%,
    rgba(55, 98, 155, 0.899635) 54.69%,
    rgba(21, 73, 139, 0.960462) 66.15%,
    rgba(11, 63, 132, 0.982766) 78.12%,
    #044395 94.79%
  );
  box-shadow: 0px 4px 11px rgba(13, 13, 13, 0.25);
  border-radius: 10px;
  overflow: hidden;
  padding: 1rem 2rem;
  &.viewing {
    .actions {
      opacity: 1;
      pointer-events: initial;
    }

    .view-button {
      display: none;
    }
  }
  .view-button {
    position: absolute;
    left: 1rem;
    top: 1rem;

  }
  .actions {
    background: linear-gradient(
      180deg,
      rgba(3, 12, 24, 0.74) 0%,
      rgba(3, 12, 24, 0.662917) 20.31%,
      rgba(3, 12, 24, 0) 100%
    );
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 2;
    // display: flex;
    // justify-content: flex-end;
    padding: 1rem;
    flex-wrap: wrap;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.2s ease-in-out;

  }
    button {
      height: 30px;
      padding: 0 1rem;
      border: none;
      background: $primary-color;
      color: white;
      border-radius: 5px;
      box-shadow: $shadow-soft;
      cursor: pointer;
      &.accent {
        background:$accent-color;
      }
      &.secondary {
        background: $secondary-color;
      }
      &.danger {
        background: $error-color;
      }
      &.primary-light {
        background: rgba(55, 98, 155, 0.899635);
        opacity: 0.8;
      }
    }

  

  .brand {
    .img-wrapper {
      height: 36px;
      width: 36px;
      img {
        height: 100%;
        width: 100%;
        object-fit: contain;
      }
    }
  }

  .img-wrapper.sim {
    height: 38px;
    img {
      height: 100%;
      object-fit: contain;
    }
  }

  .img-wrapper.issuer {
    width: 65px;
    img {
      width: 100%;
      object-fit: contain;
    }
  }

  .card-number {
    @include heading-6;
    white-space: nowrap;
    font-family: DM Mono;
    font-style: normal;
    font-weight: 500;
    /* identical to box height */

    color: #ededed;
  }

  .name {
    @include heading-6;
    text-transform: uppercase;
    font-family: DM Mono;
    font-size: 1rem;

    color: #b8b8b8;
  }

  .validity {
    .text {
      font-family: DM Mono;
      font-style: normal;
      font-weight: 500;
      font-size: 12px;
      line-height: 16px;

      /* secondary-background */

      color: #858585;
    }

    .date {
      font-family: DM Mono;
      font-style: normal;
      font-weight: 500;
      font-size: 14px;
      line-height: 18px;

      color: #ffffff;
    }
  }
}
</style>