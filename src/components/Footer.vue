<template>
  <footer class="bg-black text-white py-8 border-white-010">
    <div class="max-w-[1920px] px-6 lg:px-[78px] mx-auto">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- Left Side: Logo & Description -->
        <div class="space-y-6 flex flex-col items-center lg:items-start">
          <router-link to="/" class="flex items-center mr-0 lg:mr-[91px]">
            <img src="/src/assets/images/logo_new.png" alt="Logo" class="h-8 mr-2">
            <span class="text-white text-xl font-bold"> NUSATECH</span>
          </router-link>          
          <p class="text-secondary w-[324px] text-center lg:text-left">
            Digital Blockchain Innovation for a Smarter Future          
          </p>

          <div class="flex flex-row items-center justify-center gap-4">
            <a href="https://www.facebook.com/cvnusatech.nusatech.7" target="_blank">
              <img src="/src/assets/images/footer/Facebook.svg" alt="Facebook">
            </a>
            <a href="https://twitter.com/nusatechid" target="_blank">
              <img src="/src/assets/images/footer/Twitter.svg" alt="Twitter">
            </a>
            <a href="https://www.instagram.com/nusatechdevelopment/" target="_blank">
              <img src="/src/assets/images/footer/Instagram.svg" alt="Instagram">
            </a>
            <a href="https://www.linkedin.com/company/nusatech-it-development/" target="_blank">
              <img src="/src/assets/images/footer/LinkedIn.svg" alt="LinkedIn">
            </a>
            <a href="https://web.telegram.org/k/#@NusatechDevelopment" target="_blank">
              <img src="/src/assets/images/footer/Telegram.svg" alt="Telegram">
            </a>
          </div>
        </div>

        <!-- Right Side: Menu & Contact -->
        <div class="grid grid-cols-2 lg:grid-cols-4 gap-8">
          <div>
            <h3 class="text-lg font-semibold text-white mb-3">Company</h3>
            <ul class="space-y-2 text-secondary">
              <li><a href="/contact" class="nav-item">About us</a></li>
              <li><a href="/service" class="nav-item">Services</a></li>
              <li><a href="/portfolio" class="nav-item">Portfolio</a></li>
              <li><a href="/team" class="nav-item">Team</a></li>
            </ul>
          </div>
          <div>
            <h3 class="text-lg font-semibold text-white mb-3">Services</h3>
            <ul class="space-y-2 text-secondary">
              <li><a href="#" class="nav-item">Blockchain</a></li>
              <li><a href="#" class="nav-item">Crypto</a></li>
              <li><a href="#" class="nav-item">DeFi</a></li>
              <li><a href="#" class="nav-item">NFT</a></li>
            </ul>
          </div>
          
          <div>
            <h3 class="text-lg font-semibold text-white mb-3">Follow Us</h3>
            <ul class="space-y-2 text-secondary">
              <li><a href="https://www.linkedin.com/company/nusatech-it-development/" class="nav-item">LinkedIn</a></li>
              <li><a href="https://www.instagram.com/nusatechdevelopment/" class="nav-item">Instagram</a></li>
              <li><a href="https://web.telegram.org/k/#@NusatechDevelopment" class="nav-item">Telegram</a></li>
              <li><a href="https://www.facebook.com/cvnusatech.nusatech.7" class="nav-item">Facebook</a></li>
              <li><a href="https://twitter.com/nusatechid" class="nav-item">Twitter</a></li>
            </ul>
          </div>
          <div>
            <h3 class="text-lg font-semibold text-white mb-3">Contacts us</h3>
            <ul class="space-y-2 text-secondary">
              <li class="flex flex-row gap-1">
                <img src="/src/assets/images/Email.svg" alt="">
                <p class="text-secondary">admin@nusatech.id</p>
              </li>
              <li class="flex flex-row gap-1">
                <img src="/src/assets/images/Phone.svg" alt="">
                <p class="text-secondary"> +62 896-707-50-707</p>
              </li>
              <li class="flex flex-row gap-1">
                <img src="/src/assets/images/Mark.svg" alt="">
                <p class="text-secondary">Semarang Indonesia, 50276</p>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Bottom Section: Copyright & Divider -->
      <hr class="my-6 border-white-010">
      <div class="flex flex-row w-full">
        <p class="text-left lg:text-center text-secondary me-auto">&copy; {{ new Date().getFullYear() }} Your Company. All rights reserved.</p>
        <p class="text-right text-secondary">All Rights Reserved | <a href="/privacy-policy" class="text-primary">Privacy Policy</a></p>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer',
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