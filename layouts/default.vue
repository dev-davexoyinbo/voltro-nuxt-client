<template>
    <div id="default-layout">
        <navbar />
        <div id="layout-content">

        <Nuxt />
        </div>
        <app-footer />
    </div>
</template>

<script lang="ts">
import {Vue, Component} from 'nuxt-property-decorator';
import Navbar from "~/components/Navbar.vue";
import AppFooter from "~/components/AppFooter.vue";


@Component({
    components: {
        Navbar,
        AppFooter,
    }
})
export default class DefaultLayout extends Vue {

}
</script>

<style lang="scss">
#default-layout {
    min-height: 100vh;
    display: flex;
    flex-direction: column;

    #layout-content {
        flex: 1;
    }
}
</style>