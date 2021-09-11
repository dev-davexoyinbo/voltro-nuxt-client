<template>
    <div>
        <navbar />
        <Nuxt />
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