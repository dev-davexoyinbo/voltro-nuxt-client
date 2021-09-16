<template>
  <div>This is the home page</div>
</template>

<script lang="ts">
import {Vue, Component} from "nuxt-property-decorator";

@Component({
    layout: "authenticated"
})
export default class HomePage extends Vue {

}
</script>

<style>

</style>