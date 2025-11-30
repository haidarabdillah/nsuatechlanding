<template>
  <div class="container relative
     h-fit mx-auto flex flex-col justify-center items-center space-y-4 mt-[56px] p-4 pb-[120px]">
     <img src="/src/assets/images/hero_light.png" alt="alt" class="absolute top-[-50vh] left-[-40vh] lg:top-[-60vh] lg:left-[-80vh] -z-10">
        <img src="/src/assets/images/hero_light_02.png" alt="alt" class="absolute top-[140vh] right-[-50vh] lg:top-[-30vh] lg:right-[-100vh] -z-10">

    <p class="text-2xl lg:text-[80px] font-bold text-white text-center">Our Recent Projects</p>
    <p class="text-sm text-secondary text-center">Explore the groundbreaking projects powered by the Nusatech teams,
      showcasing its <br class="hidden lg:block" /> remarkable capabilities and transformative impact across diverse industries.</p>

    <div class="hidden lg:flex flex-row gap-4 mt-[56px]">
      <button @click="filterPortfolios('All')" :class="{ 'bg-primary': activeFilter === 'All' }" class="tab">All
        Project</button>
      <button @click="filterPortfolios('Blockchain')" :class="{ 'bg-primary': activeFilter === 'Blockchain' }"
        class="tab">Blockchain</button>
      <button @click="filterPortfolios('Finance')" :class="{ 'bg-primary': activeFilter === 'Finance' }"
        class="tab">Finance</button>
      <button @click="filterPortfolios('NFT')" :class="{ 'bg-primary': activeFilter === 'NFT' }"
        class="tab">NFT</button>
        <button @click="filterPortfolios('Wallet')" :class="{ 'bg-primary': activeFilter === 'Wallet' }"
        class="tab">Wallet</button>
    </div>

    <div class="flex lg:hidden flex-row">
      <button @click="filterPortfolios('All')" :class="{ 'bg-primary': activeFilter === 'All' }"
        class="w-[85px] text-white text-[10px] rounded-tl-[8px] rounded-bl-[8px] border-[0.5px] border-grey px-[10px] py-[14px] bg-dark cursor-pointer hover:bg-primary">All
        Project</button>
      <button @click="filterPortfolios('Blockchain')" :class="{ 'bg-primary': activeFilter === 'Blockchain' }"
        class="w-[85px] text-white text-[10px] border-[0.5px] border-grey px-[10px] py-[14px] bg-dark cursor-pointer hover:bg-primary">Blockchain</button>
      <button @click="filterPortfolios('Finance')" :class="{ 'bg-primary': activeFilter === 'Finance' }"
        class="w-[65px] text-white text-[10px] border-[0.5px] border-grey px-[10px] py-[14px] bg-dark cursor-pointer hover:bg-primary">Finance</button>
      <button @click="filterPortfolios('NFT')" :class="{ 'bg-primary': activeFilter === 'NFT' }"
        class="w-[65px] text-white text-[10px] border-[0.5px] border-grey px-[10px] py-[14px] bg-dark cursor-pointer hover:bg-primary">NFT</button>
      <button @click="filterPortfolios('Wallet')" :class="{ 'bg-primary': activeFilter === 'Wallet' }"
        class="w-[85px] text-white text-[10px] rounded-tr-[8px] rounded-br-[8px] border-[0.5px] border-grey px-[10px] py-[14px] bg-dark cursor-pointer hover:bg-primary">Wallet</button>
    </div>

    <div class="hidden lg:grid grid-cols-1 lg:grid-cols-4 gap-6 mt-8">
      <div v-for="item in filteredItems" :key="item.id"
        class="relative rounded-[16px] bg-dark border-[1px] p-4 border-white-010 h-[431px]">
        <div class="w-full h-[300px] overflow-hidden">
          <img :src="item.image" :alt="item.title" alt="Portfolio Image"
            class="w-full h-full object-cover object-top filter grayscale" />
        </div>
        <div
          class="w-[250px] 2xl:w-[314px] h-[185px] rounded-[8px] bg-dark overflow-hidden mx-auto translate-y-[-100px] shadow-[0px_4px_30px_0px_rgba(42,189,181,0.15)]">
          <img src="/src/assets/images/team_light.png" alt="alt" class="absolute top-[-80px] -z-10" />
          <div class="flex flex-col gap-[6px] justify-center items-center h-full">
            <p class="text-primary font-medium text-sm mb-[6px]">{{ item.tags }}</p>
            <p class="text-white text-xl font-bold mb-[21px]">{{ item.title }}</p>
            <router-link :to="`/portfolio/${item.id}`"
              class="px-[28px] py-[10px] text-white cursor-pointer rounded-[6px] bg-white-010 border-[0.05px] border-green-010">
              View Details
            </router-link>
          </div>
        </div>
      </div>
    </div>

    <div class="block lg:hidden relative w-full overflow-hidden h-fit">
      <!-- Slider Wrapper (Moves Everything) -->
      <div class="flex transition-transform duration-500 ease-in-out"
        :style="{ transform: `translateX(-${currentIndex * 100}%)` }">

        <div v-for="item in filteredItems" :key="item.id" class="w-full flex-shrink-0 relative rounded-[16px] bg-dark border-[1px] p-4 border-white-010 h-[431px]">
          <div class="w-full h-[300px] overflow-hidden">
              <img :src="item.image" :alt="item.title" alt="Portfolio Image"
                class="w-full h-full object-cover object-top filter grayscale" />
          </div>
          <div
            class="w-full h-[185px] rounded-[8px] bg-dark overflow-hidden mx-auto translate-y-[-100px] shadow-[0px_4px_30px_0px_rgba(42,189,181,0.15)]">
            <img src="/src/assets/images/team_light.png" alt="alt" class="absolute top-[-80px] -z-10" />
            <div class="flex flex-col gap-[6px] justify-center items-center h-full">
              <p class="text-primary font-medium text-sm mb-[6px]">{{ item.tags }}</p>
              <p class="text-white text-xl font-bold mb-[21px]">{{ item.title }}</p>
              <router-link :to="`/portfolio/${item.id}`"
                class="px-[28px] py-[10px] text-white cursor-pointer rounded-[6px] bg-white-010 border-[0.05px] border-green-010">
                View Details
              </router-link>
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
  </div>
</template>


<script setup>
import { ref, computed, onMounted } from "vue";
import axios from "axios";

const apiUrl = import.meta.env.VITE_API_URL;
const items = ref([]);
const filteredItems = ref([]);
const activeFilter = ref("all");
const currentIndex = ref(0);
const totalSlides = computed(() => filteredItems.value.length);


// Fetch portfolios
onMounted(async () => {
  try {
    const response = await axios.get(apiUrl + "portfolios");
    if (response.data.length) {
      items.value = response.data;
      filteredItems.value = response.data; // Show all initially
    }
  } catch (error) {
    console.error("Error fetching portfolios:", error);
  }
});

// Function to filter portfolios
const filterPortfolios = (tag) => {
  activeFilter.value = tag;
  if (tag === "All") {
    filteredItems.value = items.value;
  } else {
    filteredItems.value = items.value.filter((item) =>
      item.tags.includes(tag)
    );
  }
};

// Function to get image URL
const getImageUrl = (image) => {
  return image ? `${apiUrl}images/${image}` : "/src/assets/images/dummy_portfolio.jpeg";
};

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

</script>


<script>
import Craft from './Service/Craft.vue';
import Solution from './Service/Solution.vue';

export default {
  name: 'Portfolio',
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