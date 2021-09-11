<template>
  <div>
      <about-hero-page />
  </div>
</template>

<script lang="ts">
import {Vue, Component} from "nuxt-property-decorator";
import AboutHeroPage from "~/components/AboutHeroPage.vue";

@Component({
    layout: 'default',
    components: {
        AboutHeroPage,
    }
})
export default class AboutPage extends Vue {

}
</script>

<style>

</style>