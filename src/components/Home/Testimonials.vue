<template>
    <div class="container pb-[64px] relative overflow-hidden mx-auto h-fit flex flex-col justify-center items-center p-4 mt-[56px]">
        <p class="text-white text-2xl lg:text-[64px] font-bold text-center">Real Stories, Real Impact: Hear from Our <br /> <span
                class="text-primary">Satisfied Clients</span></p>
        <p class="text-secondary text-sm lg:text-lg text-center">Discover how video testimonial has transformed businesses through
            innovative solutions and dedicated support.</p>

        <div class="relative w-full mx-auto mt-4">
            <div class="z-50 relative overflow-hidden mx-auto flex flex-col lg:flex-row justify-center items-center w-fit rounded-[17px] px-[52px] py-[32px] gap-4 border-[1px] border-white-010 bg-[#0C1215]">
                <div class="mx-auto w-full h-[332px] lg:w-[338px] lg:h-[332px] overflow-hidden rounded-lg">
                    <img :src="testimonials[currentIndex].image" alt="alt" class="w-full h-full object-cover">
                </div>
                <div class="flex flex-col items-start gap-4 w-full lg:w-[500px] 2xl:w-[843px]">
                    <img src="/src/assets/images/feedspace_logo.png" alt="alt" class="hidden">
                    <p class="text-secondary">{{ testimonials[currentIndex].quote }}</p>
                    <div class="flex flex-row gap-2 items-center justify-center">
                        <div class="mx-auto w-[64px] h-[64px] overflow-hidden rounded-full">
                            <img :src="testimonials[currentIndex].image" alt="alt" class="w-full h-full object-cover">
                        </div>
                        <div class="flex flex-col">
                            <p class=" text-lg font-semibold text-primary">{{ testimonials[currentIndex].name }}</p>
                            <p class="text-secondary text-lg font-normal">{{ testimonials[currentIndex].position }}</p>
                        </div>
                    </div>
                </div>
                <img src="/src/assets/images/team_light.png" alt="alt" class="absolute z-10 scale-115 top-[250px]">
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute z-50 bottom-0 hidden lg:block">
            </div>
            <button @click="prevTestimonial"
                class="hidden lg:block absolute left-0 top-1/2 transform -translate-y-1/2 rotate-180 z-50 cursor-pointer">
                <img src="/src/assets/images/slide_button.png" alt="alt">
            </button>

            <button @click="nextTestimonial"
                class="hidden lg:block absolute right-0 top-1/2 transform -translate-y-1/2 z-50 cursor-pointer">
                <img src="/src/assets/images/slide_button.png" alt="alt">
            </button>
        </div>

        <img src="/src/assets/images/hero_light.png" alt="alt" class="absolute -z-20 top-[100px]">


    </div>
</template>

<script>
export default {
    name: 'Reason',
    data() {
        return {
            currentIndex: 0,
            testimonials: [
                { name: "George W.", position: "CEO of a Fintech Startup", quote: "The Nusatech team truly understands our business needs. They developed a fintech application that is fast, secure, and user-friendly. The results are outstanding! Their support is also very responsive. Highly recommended!", image:"/images/man.png" },
                { name: "Rachel R.", position: "Founder of a Web3 Platform", quote: "We needed a secure and scalable smart contract development. Nusatech not only provided the best solution but also guided us through the Web3 implementation. The project ran smoothly, and the results exceeded our expectations!",image:"/images/woman.png" },
                { name: "Donny W.",position: "Crypto Exchange Investor", quote: "Building a crypto exchange is no easy task, but Nusatech made it all possible. From system architecture to security, everything was executed at the highest standards. We are extremely satisfied with their services!",image:"/images/man.png" }
            ]
        };
    },
    mounted() {
    },
    methods: {
        prevTestimonial() {
            this.currentIndex = (this.currentIndex - 1 + this.testimonials.length) % this.testimonials.length;
        },
        nextTestimonial() {
            this.currentIndex = (this.currentIndex + 1) % this.testimonials.length;
        }
    }
};
</script>

<style scoped>
button {
    transition: background-color 0.3s ease;
}
</style>
