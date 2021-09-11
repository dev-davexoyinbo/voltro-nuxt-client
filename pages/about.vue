<template>
  <div id="about-page">
    <about-hero-page />
    <section class="movement">
      <div class="left">
        <div class="image-wrapper">
          <img src="/images/headway-F2KRf_QfCqw-unsplash 1.svg" alt="" />
        </div>
      </div>
      <div class="right">
        <h3 class="heading heading-4">The voltro secure movement</h3>
        <p class="long-text">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida et
          lacus, odio a at eu. Tincidunt id adipiscing lorem leo. Tellus rhoncus
          accumsan sapien consequat elit. Blandit in consectetur non sit. Amet
          diam cras et, risus quam molestie quam ut. Scelerisque cras sit
          elementum at sit fermentum molestie quis. Varius mattis ipsum aenean
          suspendisse volutpat dui urna vitae. Vulputate lectus dignissim amet
          at maecenas a nibh ac. Purus tristique non sit vestibulum.
          Pellentesque erat risus.
        </p>
      </div>
    </section>
    <section class="what-we-do">
      <h4 class="heading heading-4">What We Do</h4>

      <p v-for="i in 3" :key="i">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo aliquet
        dignissim egestas at. Porttitor volutpat purus mattis volutpat tincidunt
        sapien diam. Bibendum nec arcu fames ut. Placerat fermentum in diam
        volutpat pellentesque ullamcorper non. Morbi posuere enim ultricies
        turpis donec dui. Duis a, etiam natoque est, aliquet egestas. Neque
        viverra aliquet nam magnis augue in diam. Vulputate convallis praesent
        gravida ornare sit. Leo orci molestie eget enim sed accumsan nunc.
      </p>
    </section>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";
import AboutHeroPage from "~/components/AboutHeroPage.vue";

@Component({
  layout: "default",
  components: {
    AboutHeroPage,
  },
})
export default class AboutPage extends Vue {}
</script>

<style lang="scss">
#about-page {
  & > * {
    padding: 3rem var(--body-padding-x);
  }
  .movement {
    display: grid;
    
    gap: 2rem;
    flex-wrap: wrap;
    grid-template-columns: 1fr;
    @media only screen and (min-width:768px) {
grid-template-columns: 40% 1fr;
    }
    @media only screen and (min-width:1024px) {
grid-template-columns: 1fr 1fr;
    }

    .heading {
      margin-bottom: 1.5rem;
    }

    .long-text {
      max-width: 500px;
    }

    .image-wrapper img {
      max-width: 100%;
      object-fit: contain;
    }
  }

  .what-we-do {
    background: white;
    margin-bottom: 1rem;
    .heading {
      text-align: center;
      margin-bottom: 24px;
    }
    p {
        margin-bottom: 1rem;
    }
  }
}
</style>