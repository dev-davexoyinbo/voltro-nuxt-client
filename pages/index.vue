<template>
  <div class="heading-2">This is the home page</div>
</template>

<script lang="ts">
import { Vue, Component } from "nuxt-property-decorator";

@Component({
  layout: "default",
})
export default class HomePage extends Vue {}
</script>
