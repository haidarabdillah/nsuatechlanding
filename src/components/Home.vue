<template>
        <Hero />
        <div class="running-text-container max-w-[1920px] mx-auto">
            <div class="running-text">
                ● IT Blockchain Development and Consulting Services. ● IT Blockchain Development and Consulting Services. ● IT Blockchain Development and Consulting Services. ● IT Blockchain Development and Consulting Services.
            </div>
        </div>
        <img src="/src/assets/images/hero_light.png" alt="alt" class="left-[-100px] top-[800px] lg:flex absolute -z-10 lg:top-[100px] lg:left-[1000px]">
        <Partners />
        <Reason />
        <img src="/src/assets/images/hero_light.png" alt="alt" class="left-[-100px] top-[2050px] lg:flex absolute -z-10 lg:top-[100px] lg:left-[1000px]">
        <Services />
        <img src="/src/assets/images/hero_light.png" alt="alt" class="left-[200px] top-[3100px] lg:flex absolute -z-10 lg:top-[100px] lg:left-[1000px]">
        <Testimonials />

</template>

<script>
import Hero from './Home/Hero.vue';
import Partners from './Home/Partners.vue';
import Reason from './Home/Reason.vue';
import Services from './Home/Services.vue';
import Testimonials from './Home/Testimonials.vue';

export default {
    name: 'Home',
    components: {
        Hero,
        Partners,
        Reason,
        Services,
        Testimonials
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
    padding-left:-100%;
    animation: running 10s linear infinite;
    color: white;
    font-size: 24px;
    font-weight: 700;
}

@keyframes running {
    0% {
        transform: translateX(0);
    }

    100% {
        transform: translateX(-25%);
    }
}
</style>