<template>
  <nav class="bg-white-005 border-b-[0.5px] border-b-white-005 absolute top-0 left-0 right-0 z-50 p-4">
    <div class="max-w-[1920px] p-0 lg:px-[78px] mx-auto flex justify-between items-center">
      <button @click="toggleMobileMenu" class="flex lg:hidden cursor-pointer">
        <div class="rounded-[6px] border-[1px] border-[#25282C] p-[10px]" style="background-color: #141414;">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
            <path d="M2.5 15V13.3333H17.5V15H2.5ZM2.5 10.8333V9.16667H17.5V10.8333H2.5ZM2.5 6.66667V5H17.5V6.66667H2.5Z"
              fill="#7E7E81" />
          </svg>
        </div>

      </button>
      <div class="flex items-center">

        <router-link to="/" class="flex items-center mr-0 lg:mr-[91px]">
          <img src="/src/assets/images/logo_new.png" alt="Logo" class="h-8 mr-2">
          <span class="text-white text-lg lg:text-xl font-bold"> NUSATECH </span>
        </router-link>
        <ul class="flex space-x-4 ml-4 hidden md:flex">
          <li>
            <router-link to="/" class="text-white nav-item">Home</router-link>
          </li>
          <!-- <li>
            <router-link to="/team" class="text-white nav-item">Team</router-link>
          </li> -->
          <!-- <li>
            <router-link to="/portfolio" class="text-white nav-item">Portfolio</router-link>
          </li> -->
          <!-- <li>
            <router-link to="/team" class="text-white nav-item">Team</router-link>
          </li> -->
          <li>
            <router-link to="/service" class="text-white nav-item">Services</router-link>
          </li>
          <li>
            <router-link to="/contact" class="text-white nav-item">Contact Us</router-link>
          </li>
          <li>
            <a href="#" class="hidden text-white nav-item flex flex-row items-center">
              <p class="">More</p>
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="text-inherit"
                fill="currentColor">
                <path
                  d="M11.3003 14.3L8.70026 11.7C8.38359 11.3833 8.31292 11.021 8.48826 10.613C8.66359 10.205 8.97592 10.0007 9.42526 10L14.5753 10C15.0253 10 15.3379 10.2043 15.5133 10.613C15.6886 11.0217 15.6176 11.384 15.3003 11.7L12.7003 14.3C12.6003 14.4 12.4919 14.475 12.3753 14.525C12.2586 14.575 12.1336 14.6 12.0003 14.6C11.8669 14.6 11.7419 14.575 11.6253 14.525C11.5086 14.475 11.4003 14.4 11.3003 14.3Z">
                </path>
              </svg>
            </a>

          </li>
        </ul>
      </div>

      <div class="flex items-center">
        <a href="https://api.whatsapp.com/send?phone=+6289670750707&text=Hi%21+I+want+to+ask+about+service+offering+in+Nusatech" target="_blank"
          class="bg-primary text-[10px] lg:text-sm text-white font-medium py-2 px-3 rounded-[4px] mr-4 md:mr-0">
          GET STARTED
      </a>

      </div>
    </div>

    <div v-if="isMobileMenuOpen" class="lg:hidden bg-dark h-full p-4 mt-4 rounded">
      <ul class="flex flex-col space-y-4">
        <li>
          <router-link to="/" class="text-white nav-item">Home</router-link>
        </li>
        <!-- <li>
          <router-link to="/team" class="text-white nav-item">Team</router-link>
        </li> -->
        <li>
          <router-link to="/portfolio" class="text-white nav-item">Portfolio</router-link>
        </li>
        <li>
          <router-link to="/service" class="text-white nav-item">Services</router-link>
        </li>
        <li>
          <router-link to="/contact" class="text-white nav-item">Contact</router-link>
        </li>
      </ul>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'Navbar',
  data() {
    return {
      isMobileMenuOpen: false,
    };
  },
  mounted() {
  },
  methods: {
    toggleMobileMenu() {
      this.isMobileMenuOpen = !this.isMobileMenuOpen;
    },
  },
};
</script>

<style scoped>
/* Any component-specific styles can go here */
</style>