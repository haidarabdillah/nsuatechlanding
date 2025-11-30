
import { createRouter, createWebHistory } from 'vue-router';
import Home from '../components/Home.vue';
import NotFound from '../components/NotFound.vue';
import Service from '../components/Service.vue';
import Team from '../components/Team.vue';
import Portfolio from '../components/Portfolio.vue';
import PortfolioDetail from '../components/PortfolioDetail.vue';
import Contact from '../components/Contact.vue';
import PrivacyPolicy from '../components/PrivacyPolicy.vue';

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/service',
    name: 'Service',
    component: Service
  },
  // {
  //   path: '/team',
  //   name: 'Team',
  //   component: Team
  // },
  {
    path: '/contact',
    name: 'Contact',
    component: Contact
  },
  {
    path: '/privacy-policy',
    name: 'PrivacyPolicy',
    component: PrivacyPolicy
  },
  // {
  //   path: '/portfolio',
  //   name: 'Portfolio',
  //   component: Portfolio
  // },
  { path: "/portfolio/:id", component: PortfolioDetail, props: true },
  {
    path: '/:catchAll(.*)*', // Catch-all route for 404 page
    name: 'NotFound',
    component: NotFound
  }
];

const router = createRouter({
  history: createWebHistory(), // Use appropriate history mode
  routes
});

export default router;