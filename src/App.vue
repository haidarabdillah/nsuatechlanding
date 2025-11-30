<script setup>
import Footer from './components/Footer.vue';
import HelloWorld from './components/HelloWorld.vue'
import Navbar from './components/Navbar.vue';
</script>

<template>
  <div class="">
    <Navbar />
    <div class="content-area"> <router-view></router-view> </div>
    <Footer />
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue';

export default {
  name: 'App',
  components: {
    Navbar,
    Footer,
  },
};
</script>
<style scoped>
.content-area {
  padding-top: 64px; 
}
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
