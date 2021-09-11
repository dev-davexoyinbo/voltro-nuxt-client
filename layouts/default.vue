<template>
    <div>
        <navbar />

        <Nuxt />
    </div>
</template>

<script lang="ts">
import {Vue, Component} from 'nuxt-property-decorator';
import Navbar from "~/components/Navbar.vue";


@Component({
    components: {
        Navbar,
    }
})
export default class DefaultLayout extends Vue {

}
</script>