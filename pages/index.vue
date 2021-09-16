<template>
  <div>
    <hero-page />
    <section class="showcase home-1">
      <div class="left">
        <div class="content">
          <h3 class="heading">Security Guaranteed</h3>
          <p class="long-text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis
            molestie enim tincidunt duis. Amet, eget lacus, feugiat ut morbi
            pellentesque amet natoque feugiat.
          </p>
          <div class="button-container">
            <button class="btn btn-primary">Get Started</button>
            <button class="btn btn-secondary">Learn more about us</button>
          </div>
        </div>
      </div>
      <div class="right">
        <div class="image-section">
          <div class="img-wrapper">
            <img src="/images/undraw_security_o890 1.svg" alt="" />
          </div>
        </div>
      </div>
    </section>
    <section class="showcase home-2">
      <div class="left">
        <div class="content">
          <h3 class="heading">Use anywhere, and on every Device.</h3>
          <div class="long-text">
            <p>Available on Android, iOS, Windows,Linux and Chrome book.</p>
            <div class="custom-list">
              <div class="item">
                <div class="icon-container">
                  <i class="fas fa-check"></i>
                </div>
                <div class="text">Android</div>
              </div>
              <div class="item">
                <div class="icon-container">
                  <i class="fas fa-check"></i>
                </div>
                <div class="text">iOS</div>
              </div>
              <div class="item">
                <div class="icon-container">
                  <i class="fas fa-check"></i>
                </div>
                <div class="text">Windows</div>
              </div>
              <div class="item">
                <div class="icon-container">
                  <i class="fas fa-check"></i>
                </div>
                <div class="text">Linux</div>
              </div>
              <div class="item">
                <div class="icon-container">
                  <i class="fas fa-check"></i>
                </div>
                <div class="text">Chrome Book</div>
              </div>
            </div>
          </div>
          <div class="button-container">
            <button class="btn btn-secondary">Download here</button>
          </div>
        </div>
      </div>
      <div class="right">
        <div class="image-section">
          <div class="img-wrapper">
            <img src="/images/undraw_unlock_24mb 1.svg" alt="" />
          </div>
        </div>
      </div>
    </section>

    <trusted-by-strip />
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import HeroPage from "~/components/HeroPage.vue";
import TrustedByStrip from "~/components/TrustedByStrip.vue";

@Component({
  layout: "default",
  components: {
    HeroPage,
    TrustedByStrip,
  },
})
export default class LandingPage extends Vue {}
</script>

<style lang="scss">
@import "~assets/styles/variables";
@import "~assets/styles/topography";
section.showcase {
  min-height: calc(100vh - #{$navbar-height});
  padding: 24px var(--body-padding-x);
  display: grid;
  align-items: center;
  gap: 1rem;
  max-width: 100%;
  overflow: hidden;
  // grid-template-columns: 1fr 1fr;
  margin: 32px 0;

  @media only screen and (min-width: 768px) {
    margin: unset;
    grid-template-columns: 60% 1fr;
  }

  @media only screen and (min-width: 1024px) {
    grid-template-columns: 40% 1fr;
  }

  &.home-1 {
    background: linear-gradient(
      180deg,
      rgba(255, 255, 255, 0) 0%,
      #ffffff 100%
    );
  }

  .left {
    order: 2;
    @media only screen and (min-width: 768px) {
      order: 1;
    }
  }

  .right {
    justify-self: center;
    order: 1;
    @media only screen and (min-width: 768px) {
      order: 2;
    }
  }

  .image-section {
    width: 90%;
    height: 90%;
    overflow: hidden;
    .img-wrapper img {
      max-width: 100%;
      max-height: 100%;
      object-fit: contain;
    }
  }

  .heading {
    @include heading-5;
    margin-bottom: 16px;
    @media only screen and (min-width: 768px) {
      margin-bottom: 20px;
      @include heading-4;
    }
    @media only screen and (min-width: 1024px) {
      @include heading-3;
    }
  }

  .long-text {
    @include paragraph-regular;
    margin-bottom: 32px;

    @media only screen and (min-width: 1024px) {
      margin-bottom: 44px;
      @include paragraph-large;
    }

    .custom-list {
      @include paragraph-small;
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
      margin-top: 24px;
      .item {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        

        .icon-container {
          color: $accent-color;
        }
      }
    }
  }

  .button-container {
    display: flex;
    gap: 1rem;
  }
}
</style>