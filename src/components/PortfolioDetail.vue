<template>
    <div class="container relative
     h-fit mx-auto flex flex-col justify-center items-start space-y-4 p-4 mt-[56px] pb-[120px]">
     <img src="/src/assets/images/hero_light.png" alt="alt" class="absolute top-[-50vh] left-[-40vh] lg:top-[-60vh] lg:left-[-80vh] -z-10">
     <img src="/src/assets/images/hero_light_02.png" alt="alt" class="absolute top-[140vh] right-[-50vh] lg:top-[-30vh] lg:right-[-100vh] -z-10">

        <div class="flex flex-row justify-start items-center w-full">
            <p class="text-2xl lg:text-[48px] 2xl:text-[80px] font-bold text-white">{{ portfolio?.title }}</p>
            <router-link :to="`/portfolio`"class="ms-auto">
                <div class="bg-primary rounded-full p-5">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 40 40" fill="none">
                    <path d="M30.6077 9.39371H18.8232M30.6077 9.39371L30.6071 21.1788M30.6077 9.39371L9.39453 30.6069"
                        stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
            </div>
            </router-link>
            
        </div>

        <div class="border-t-[0.5px] border-white-040 w-full flex flex-col lg:flex-row gap-2 py-3">
            <p class="max-w-[749px] text-secondary me-auto">{{ portfolio?.excerpt }}</p>
            <div class="flex flex-row">
                <div class="px-[28px] py-[10px] rounded-full bg-white-010 border-[0.5px] border-white-040 me-4 h-fit"><p class="text-primary">{{ portfolio?.tags }}</p></div>
                <a href="https://api.whatsapp.com/send?phone=+6289670750707&text=Hi%21+I+want+to+ask+about+service+offering+in+Nusatech" target="_blank" class="px-[28px] py-[10px] rounded-full bg-white-010 border-[0.5px] border-white-040 h-fit"><p class="text-primary">Contact Us</p></a>
            </div>
           
        </div>
        <div class="w-full h-[472px] overflow-hidden">
            <img 
            :src="portfolio?.image" :alt="portfolio?.title" alt="alt" class="w-full h-full object-cover object-top filter grayscale">
        </div>
        <p class="text-primary text-xl lg:text-[48px] text-left">{{ portfolio?.subtitle }}</p>
        <p class="text-secondary"><span class="text-primary">{{ portfolio?.author }}</span>  - <span class="text-primary">{{ portfolio?.tags }}</span>  - {{ formatDate(portfolio?.created_at) }}</p>
        <p class="text-secondary text-justify">
            {{ portfolio?.content }}
        </p>

        <div class="w-full flex flex-col lg:flex-row items-center py-3 gap-4">
            <p class="max-w-[749px] text-primary text-center lg:text-left text-2xl font-semibold m-0 lg:me-auto">Bagikan artikel diatas</p>
            <div class="flex flex-row gap-2">
                <a href=""><img src="/src//assets/images/social/twitter_white.svg" alt="alt"></a>
            <a href=""><img src="/src//assets/images/social/facebook_white.svg" alt="alt"></a>
            <a href=""><img src="/src//assets/images/social/linkedin_white.svg" alt="alt"></a>
            <a href=""><img src="/src//assets/images/social/whatsapp_white.svg" alt="alt"></a>
            <a href=""><img src="/src//assets/images/social/share_white.svg" alt="alt"></a>
            </div>
            
        </div>    
    </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { useRoute,useRouter } from "vue-router";
import axios from "axios";

const route = useRoute();
const router = useRouter();
const portfolio = ref({});

const apiUrl = import.meta.env.VITE_API_URL;

const formatDate = (dateString) => {
  const date = new Date(dateString);
  return date.toLocaleDateString("en-US", { year: "numeric", month: "long", day: "numeric" });
};

const getImageUrl = (image) => {
  return image ? `${apiUrl}images/${image}` : "/src/assets/images/dummy_portfolio.jpeg";
};
onMounted(async () => {
  try {
    const response = await axios.get(apiUrl+"portfolios/"+route.params.id);
    if (response.data) {
      portfolio.value = response.data;
    } else {
      router.push("/portfolio"); // Redirect if portfolio is null
      return;
    }
  } catch (error) {
    router.push("/portfolio"); 
    console.error("Error fetching portfolio details:", error);
  }
});
</script>

<script>
import Craft from './Service/Craft.vue';
import Solution from './Service/Solution.vue';

export default {
    name: 'PortfolioDetail',
    components: {
        Solution,
        Craft
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