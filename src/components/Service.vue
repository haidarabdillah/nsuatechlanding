<template>
        <Solution />
        <Expertise />
        <Craft />
</template>


<script>
import Craft from './Service/Craft.vue';
import Expertise from './Service/Expertise.vue';
import Solution from './Service/Solution.vue';

export default {
    name: 'Service',
    components: {
        Solution,
        Craft,
        Expertise
    },
    data() {
        return {
        };
    },
    mounted() {
    }
};
</script>

<style scoped>
.running-text-container {
    width: 100%;
    background: linear-gradient(324deg, #004337 0%, #04B86C 57.15%, #004337 100%);
    padding: 25px;
    overflow: hidden;
    white-space: nowrap;
    display: flex;
    align-items: center;
}

.running-text {
    display: inline-block;
    padding-left: 0;
    animation: running 60s linear infinite;
    color: white;
    font-size: 24px;
    font-weight: 700;
}

@keyframes running {
    0% {
        transform: translateX(0);
    }

    100% {
        transform: translateX(-100%);
    }
}
</style>