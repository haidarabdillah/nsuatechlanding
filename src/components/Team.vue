<template>
    <div class="container relative
     h-fit mx-auto flex flex-col justify-center items-center space-y-4 p-4 mt-[56px] pb-[120px]">
        <img src="/src/assets/images/hero_light.png" alt="alt"
            class="absolute top-[-50vh] left-[-40vh] lg:top-[-60vh] lg:left-[-80vh] -z-10">
        <img src="/src/assets/images/hero_light_02.png" alt="alt"
            class="absolute top-[140vh] right-[-50vh] lg:top-[-30vh] lg:right-[-100vh] -z-10">

        <p class="text-2xl lg:text-[80px] font-bold text-white text-center">Meet the team Crew, Behind your team’s
            success</p>
        <p class="text-sm text-secondary text-center">Empowering digital disruptors to achieve the extraordinary, Axel
            Capital brings together capital, <br /> creativity, and connectivity to turn groundbreaking ideas into
            global solutions.</p>

        <div class="hidden lg:flex flex-row justify-center gap-6">
            <div v-for="(member, index) in managers" :key="index"
                class="flex flex-col w-[310px] border border-white-010 gap-1 bg-dark">
                <div class="relative h-[230px] overflow-hidden">
                    <!-- Background Image -->
                    <img :src="getImageUrl(member.image)" :alt="member.name"
                        class="object-cover object-left-top w-full h-full">

                    <!-- Overlay -->
                    <div class="absolute inset-0 bg-[#2ABDB51A] z-10"></div>
                </div>
                <div class="p-4 relative overflow-hidden flex flex-col h-[330px]">
                    <p class="text-white text-lg font-semibold">{{ member.name }}</p>
                    <p class="text-primary text-sm">{{ member.position }}</p>
                    <p class="text-secondary text-sm mb-6">{{ member.description }}</p>
                    <div class="flex flex-row gap-4 !mt-auto">
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/linkedin.svg" alt="LinkedIn">
                        </a>
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/facebook.svg" alt="Facebook">
                        </a>
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/twitter.svg" alt="Twitter">
                        </a>
                    </div>
                    <img src="/src/assets/images/team_light.png" alt="alt" class="absolute z-10 top-[10px]">
                </div>
            </div>

        </div>

        <div class="block lg:hidden relative w-full overflow-hidden h-fit p-4">
            <!-- Slider Wrapper (Moves Everything) -->
            <div class="flex transition-transform duration-500 ease-in-out"
                :style="{ transform: `translateX(-${currentIndex * 100}%)` }">

                <div v-for="(member, index) in managers" :key="index" class="w-full flex-shrink-0">
                    <div class="w-full">
                        <div class="h-[230px] overflow-hidden">
                            <img :src="getImageUrl(member.image)" :alt="member.name"
                                class="object-cover object-left-top w-full h-full">
                        </div>
                        <div class="p-4 relative overflow-hidden flex flex-col h-[330px]">
                            <p class="text-white text-lg font-semibold">{{ member.name }}</p>
                            <p class="text-primary text-sm">{{ member.position }}</p>
                            <p class="text-secondary text-sm mb-6">{{ member.description }}</p>
                            <div class="flex flex-row gap-4 !mt-auto">
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/linkedin.svg" alt="LinkedIn">
                                </a>
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/facebook.svg" alt="Facebook">
                                </a>
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/twitter.svg" alt="Twitter">
                                </a>
                            </div>
                            <img src="/src/assets/images/team_light.png" alt="alt" class="absolute z-10 top-[10px]">
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="flex lg:hidden flex-row justify-center items-center mt-6 space-x-4">
            <!-- Previous Button -->
            <button @click="prevSlide" class="disabled:opacity-50 cursor-pointer" :disabled="currentIndex === 0">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 12 13" fill="none">
                    <path
                        d="M9.74997 6.58792L3.95697 6.58792L6.20697 8.83792L5.49997 9.54492L2.04297 6.08792L5.49997 2.63092L6.20697 3.33792L3.95697 5.58792L9.74997 5.58792L9.74997 6.58792Z"
                        fill="url(#paint0_linear_389_2387)" />
                    <defs>
                        <linearGradient id="paint0_linear_389_2387" x1="9.74997" y1="2.63092" x2="1.72355" y2="9.15175"
                            gradientUnits="userSpaceOnUse">
                            <stop stop-color="#004337" />
                            <stop offset="0.571547" stop-color="#04B86C" />
                            <stop offset="1" stop-color="#004337" />
                        </linearGradient>
                    </defs>
                </svg>
            </button>

            <!-- Dot Indicators (Centered) -->
            <div class="flex space-x-2">
                <span v-for="(slide, index) in totalSlides" :key="index" @click="goToSlide(index)"
                    class="w-[5px] h-[5px] rounded-full cursor-pointer transition-all duration-300"
                    :class="currentIndex === index ? 'bg-white' : 'bg-primary'"></span>
            </div>

            <!-- Next Button -->
            <button @click="nextSlide" class="disabled:opacity-50 cursor-pointer"
                :disabled="currentIndex === totalSlides - 1">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 12 13" fill="none">
                    <path
                        d="M2.25003 5.58786L8.04303 5.58786L5.79303 3.33786L6.50003 2.63086L9.95703 6.08786L6.50003 9.54486L5.79303 8.83786L8.04303 6.58786L2.25003 6.58786L2.25003 5.58786Z"
                        fill="url(#paint0_linear_389_2393)" />
                    <defs>
                        <linearGradient id="paint0_linear_389_2393" x1="2.25003" y1="9.54486" x2="10.2764" y2="3.02403"
                            gradientUnits="userSpaceOnUse">
                            <stop stop-color="#004337" />
                            <stop offset="0.571547" stop-color="#04B86C" />
                            <stop offset="1" stop-color="#004337" />
                        </linearGradient>
                    </defs>
                </svg>
            </button>
        </div>


        <p class="text-2xl lg:text-[80px] font-bold text-white text-center">Our Engineer <span
                class="text-primary">Nusatech?</span> </p>
        <p class="text-sm text-secondary text-center">Empowering digital disruptors to achieve the extraordinary, Axel
            Capital brings together capital, <br /> creativity, and connectivity to turn groundbreaking ideas into
            global solutions.</p>

        <div class="hidden lg:grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5  gap-6">
            <div v-for="(member, index) in teamMembers" :key="index"
                class="flex flex-col border border-white-010 gap-1">
                <div class="relative h-[230px] overflow-hidden">
                    <!-- Background Image -->
                    <img :src="getImageUrl(member.image)" :alt="member.name" class="object-cover w-full h-full">

                    <!-- Overlay -->
                    <div class="absolute inset-0 bg-[#2ABDB51A]"></div>
                </div>
                <div class="p-4 relative overflow-hidden">
                    <p class="text-white text-lg font-semibold">{{ member.name }}</p>
                    <p class="text-primary text-sm">{{ member.position }}</p>
                    <p class="text-secondary text-sm mb-6">{{ member.description }}</p>
                    <div class="flex flex-row gap-4">
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/linkedin.svg" alt="LinkedIn">
                        </a>
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/facebook.svg" alt="Facebook">
                        </a>
                        <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                            <img src="/src/assets/images/social/twitter.svg" alt="Twitter">
                        </a>
                    </div>
                    <img src="/src/assets/images/team_light.png" alt="alt" class="absolute -z-10 top-[-60px]">
                </div>
            </div>

        </div>

        <div class="block lg:hidden relative w-full overflow-hidden h-fit p-4">
            <!-- Slider Wrapper (Moves Everything) -->
            <div class="flex transition-transform duration-500 ease-in-out"
                :style="{ transform: `translateX(-${currentIndex2 * 100}%)` }">

                <div v-for="(member, index) in teamMembers" :key="index" class="w-full flex-shrink-0">
                    <div class="w-full">
                        <div class="h-[230px] overflow-hidden">
                            <img :src="getImageUrl(member.image)" :alt="member.name"
                                class="object-cover object-left-top w-full h-full">
                        </div>
                        <div class="p-4 relative overflow-hidden flex flex-col h-[330px]">
                            <p class="text-white text-lg font-semibold">{{ member.name }}</p>
                            <p class="text-primary text-sm">{{ member.position }}</p>
                            <p class="text-secondary text-sm mb-6">{{ member.description }}</p>
                            <div class="flex flex-row gap-4 !mt-auto">
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/linkedin.svg" alt="LinkedIn">
                                </a>
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/facebook.svg" alt="Facebook">
                                </a>
                                <a href="#" class="p-[6px] rounded-[12px] border border-[#303038] bg-white-003">
                                    <img src="/src/assets/images/social/twitter.svg" alt="Twitter">
                                </a>
                            </div>
                            <img src="/src/assets/images/team_light.png" alt="alt" class="absolute z-10 top-[10px]">
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="flex lg:hidden flex-row justify-center items-center mt-6 space-x-4">
            <!-- Previous Button -->
            <button @click="prevSlide2" class="disabled:opacity-50 cursor-pointer" :disabled="currentIndex2 === 0">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 12 13" fill="none">
                    <path
                        d="M9.74997 6.58792L3.95697 6.58792L6.20697 8.83792L5.49997 9.54492L2.04297 6.08792L5.49997 2.63092L6.20697 3.33792L3.95697 5.58792L9.74997 5.58792L9.74997 6.58792Z"
                        fill="url(#paint0_linear_389_2387)" />
                    <defs>
                        <linearGradient id="paint0_linear_389_2387" x1="9.74997" y1="2.63092" x2="1.72355" y2="9.15175"
                            gradientUnits="userSpaceOnUse">
                            <stop stop-color="#004337" />
                            <stop offset="0.571547" stop-color="#04B86C" />
                            <stop offset="1" stop-color="#004337" />
                        </linearGradient>
                    </defs>
                </svg>
            </button>

            <!-- Dot Indicators (Centered) -->
            <div class="flex space-x-2">
                <span v-for="(slide, index) in totalSlides2" :key="index" @click="goToSlide2(index)"
                    class="w-[5px] h-[5px] rounded-full cursor-pointer transition-all duration-300"
                    :class="currentIndex2 === index ? 'bg-white' : 'bg-primary'"></span>
            </div>

            <!-- Next Button -->
            <button @click="nextSlide2" class="disabled:opacity-50 cursor-pointer"
                :disabled="currentIndex2 === totalSlides2 - 1">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 12 13" fill="none">
                    <path
                        d="M2.25003 5.58786L8.04303 5.58786L5.79303 3.33786L6.50003 2.63086L9.95703 6.08786L6.50003 9.54486L5.79303 8.83786L8.04303 6.58786L2.25003 6.58786L2.25003 5.58786Z"
                        fill="url(#paint0_linear_389_2393)" />
                    <defs>
                        <linearGradient id="paint0_linear_389_2393" x1="2.25003" y1="9.54486" x2="10.2764" y2="3.02403"
                            gradientUnits="userSpaceOnUse">
                            <stop stop-color="#004337" />
                            <stop offset="0.571547" stop-color="#04B86C" />
                            <stop offset="1" stop-color="#004337" />
                        </linearGradient>
                    </defs>
                </svg>
            </button>
        </div>
    </div>
</template>

<script setup>
import { ref, computed, onMounted } from "vue";
import axios from "axios";
import Craft from './Service/Craft.vue';
import Solution from './Service/Solution.vue';

const managers = ref([
    {
        name: "John Anderson",
        position: "Chief Executive Officer",
        description: "Visionary leader with 15+ years of experience in tech startups and digital transformation. Passionate about building innovative solutions that drive business growth.",
        image: null,
        role: "Manager"
    },
    {
        name: "Sarah Chen",
        position: "Chief Technology Officer",
        description: "Full-stack architect with expertise in cloud infrastructure and AI/ML. Leading our technical vision and ensuring scalable, cutting-edge solutions.",
        image: null,
        role: "Manager"
    },
    {
        name: "Michael Roberts",
        position: "Chief Operating Officer",
        description: "Operations expert focused on optimizing processes and driving efficiency. Ensures seamless delivery of projects and exceptional client satisfaction.",
        image: null,
        role: "Manager"
    },
    {
        name: "Emily Thompson",
        position: "Chief Marketing Officer",
        description: "Creative strategist with a proven track record in digital marketing and brand development. Building meaningful connections between technology and users.",
        image: null,
        role: "Manager"
    }
]);

const teamMembers = ref([
    {
        name: "Alex Kumar",
        position: "Senior Frontend Developer",
        description: "React and Vue.js specialist creating intuitive user interfaces.",
        image: null,
        role: "Developer"
    },
    {
        name: "Jessica Lee",
        position: "Backend Developer",
        description: "Node.js and Python expert building robust server solutions.",
        image: null,
        role: "Developer"
    },
    {
        name: "David Martinez",
        position: "DevOps Engineer",
        description: "Cloud infrastructure and CI/CD pipeline optimization specialist.",
        image: null,
        role: "DevOps"
    },
    {
        name: "Sophia Williams",
        position: "UI/UX Designer",
        description: "Creating beautiful, user-centric designs and experiences.",
        image: null,
        role: "Designer"
    },
    {
        name: "Ryan Johnson",
        position: "Full Stack Developer",
        description: "Building end-to-end solutions with modern tech stacks.",
        image: null,
        role: "Developer"
    },
    {
        name: "Lisa Zhang",
        position: "Data Scientist",
        description: "Leveraging data and ML to drive intelligent solutions.",
        image: null,
        role: "Data"
    },
    {
        name: "Tom Wilson",
        position: "Mobile Developer",
        description: "iOS and Android app development with React Native.",
        image: null,
        role: "Developer"
    },
    {
        name: "Nina Patel",
        position: "QA Engineer",
        description: "Ensuring quality through comprehensive testing strategies.",
        image: null,
        role: "QA"
    },
    {
        name: "Carlos Rodriguez",
        position: "Security Engineer",
        description: "Implementing robust security measures and best practices.",
        image: null,
        role: "Security"
    },
    {
        name: "Amanda Foster",
        position: "Product Manager",
        description: "Bridging the gap between technology and business needs.",
        image: null,
        role: "Product"
    }
]);
const currentIndex = ref(0);
const currentIndex2 = ref(0);

const apiUrl = import.meta.env.VITE_API_URL;
const apiMinio = import.meta.env.VITE_MINIO_URL;

const getImageUrl = (image) => {
    return image ? `${apiMinio}${image}` : "/src/assets/images/dummy_team.jpeg";
};

// Hitung total slides secara otomatis berdasarkan jumlah managers
const totalSlides = computed(() => managers.value.length);
const totalSlides2 = computed(() => teamMembers.value.length);

onMounted(async () => {
    try {
        const response = await axios.get(apiUrl + "teams");

        if (response.data.length) {
            managers.value = response.data.filter(member => member.role === "Manager");
            teamMembers.value = response.data.filter(member => member.role !== "Manager");
        }
    } catch (error) {
        console.error("Error fetching team members:", error);
    }
});

// Navigasi slider
const prevSlide = () => {
    if (currentIndex.value > 0) {
        currentIndex.value--;
    }
};

const nextSlide = () => {
    if (currentIndex.value < totalSlides.value - 1) {
        currentIndex.value++;
    }
};

const goToSlide = (index) => {
    currentIndex.value = index;
};

const prevSlide2 = () => {
    if (currentIndex2.value > 0) {
        currentIndex2.value--;
    }
};

const nextSlide2 = () => {
    if (currentIndex2.value < totalSlides2.value - 1) {
        currentIndex2.value++;
    }
};

const goToSlide2 = (index) => {
    currentIndex2.value = index;
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