<template>
    <div class="container relative
     h-fit mx-auto flex flex-col justify-center items-center space-y-4 p-4 mt-[56px] pb-[120px]">
     <img src="/src/assets/images/hero_light.png" alt="alt" class="absolute top-[-50vh] left-[-40vh] lg:top-[-60vh] lg:left-[-80vh] -z-10">
     <img src="/src/assets/images/hero_light_02.png" alt="alt" class="absolute top-[140vh] right-[-50vh] lg:top-[-30vh] lg:right-[-100vh] -z-10">

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
            <div class="w-full space-y-10">
                <p class="text-2xl lg:text-[72px] text-white font-bold">Contact us</p>
                <div class="flex flex-col gap-8 pb-8 border-b-[0.5px] border-b-white-040">
                    <div class="flex flex-row items-center gap-4">
                        <img src="/src/assets/images/social/address.svg" alt="alt">
                        <div class="flex flex-col">
                            <p class="text-sm lg:text-lg font-medium text-white">Address</p>
                            <p class="text-xs lg:text-base text-secondary">Ruko Citragrand Blok London C3, Kec. Tembalang, Kota
                                Semarang, Jawa Tengah 50276
                            </p>
                        </div>
                    </div>
                    <div class="flex flex-row items-center gap-4">
                        <img src="/src/assets/images/social/phone.svg" alt="alt">
                        <div class="flex flex-col">
                            <p class="text-sm lg:text-lg font-medium text-white">Contact Details</p>
                            <p class="text-xs lg:text-base text-secondary"> +6296-707-50-707</p>
                        </div>
                    </div>
                    <div class="flex flex-row items-center gap-4">
                        <img src="/src/assets/images/social/mail.svg" alt="alt">
                        <div class="flex flex-col">
                            <p class="text-sm lg:text-lg font-medium text-white">Email Us</p>
                            <p class="text-xs lg:text-base text-secondary">admin@nusatech.id</p>
                        </div>
                    </div>
                </div>
                <div class="flex flex-row items-center gap-4">
                    <p class="text-xl lg:text-2xl text-white font-medium">Follow Us : </p>
                    <a href="https://www.facebook.com/cvnusatech.nusatech.7"><img src="/src/assets/images/social/contact/Facebook.svg" alt="alt"></a>
                    <a href="https://www.instagram.com/nusatechdevelopment/"><img src="/src/assets/images/social/contact/Instagram.svg" alt="alt"></a>
                    <a href="https://twitter.com/nusatechid"><img src="/src/assets/images/social/contact/Twitter.svg" alt="alt"></a>
                    <a href="https://www.linkedin.com/company/nusatech-it-development/"><img src="/src/assets/images/social/contact/Linkedin.svg" alt="alt"></a>
                </div>
            </div>
            <div class="w-full rounded-[17px] p-10 bg-dark border-[1px] border-white-010 relative">
                <p class="text-white text-[24px] lg:text-[32px] font-medium mb-10">Leave Us Your Info.</p>
                <input type="text"
                    class="w-full bg-black border-[0.5px] border-white-010 text-white py-[12px] px-[20px] rounded-[8px] mb-4"
                    placeholder="Your Name">
                <input type="text"
                    class="w-full bg-black border-[0.5px] border-white-010 text-white py-[12px] px-[20px] rounded-[8px] mb-4"
                    placeholder="Email Address">
                <textarea
                    class="w-full bg-black border-[0.5px] border-white-010 text-white py-[12px] px-[20px] rounded-[8px] resize-none h-[144px]"
                    placeholder="Comment"></textarea>
                <label class="flex items-center space-x-2 cursor-pointer mb-10">
                    <input type="checkbox"
                        class="w-5 h-5 appearance-none border border-white rounded-sm checked:bg-white checked:border-transparent">
                    <span class="text-white text-sm ">You agree to our friendly</span> <span
                        class="text-primary">privacy policy.</span>
                </label>
                <button class="bg-primary py-5 px-4 flex flex-row items-center text-white rounded-[8px]">
                    Send Message
                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewBox="0 0 21 20" fill="none">
                        <path d="M4.66699 10H16.3337M16.3337 10L11.3337 5M16.3337 10L11.3337 15" stroke="#FCFCFC"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </button>
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute bottom-0 left-1/4 right-1/4">
            </div>
        </div>

        <p class="text-2xl lg:text-[80px] font-bold text-white text-center">Frequently asked questions.</p>
        <p class="text-sm text-secondary text-center">Lorem ipsum dolor sit amet consectetur. Orci malesuada mi et mi
            pellentesque tincidunt at mollis facilisis. Nisl eu blandit nunc parturient adipiscing commodo.</p>

        <div class="relative w-full mt-[50px] ">
            <input type="text" placeholder="Search..."
                class="w-full bg-black border-[0.5px] border-white-010 text-white py-[12px] px-[20px] rounded-[8px] pl-14">

            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                class="absolute left-4 top-1/2 transform -translate-y-1/2">
                <path
                    d="M15 15L21 21M10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17Z"
                    stroke="#BABABA" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
        </div>

        <div class="w-full">
            <div v-for="(item, index) in accordionItems" :key="index"
                class="accordion-item bg-dark rounded-lg mb-2 overflow-hidden border-[0.5px] border-white-010">
                <div @click="toggleAccordion(index)"
                    class="accordion-header flex items-center justify-between p-4 cursor-pointer"
                    :class="item.isOpen ? 'bg-dark text-white' : 'bg-black text-white'">
                    <h3 class="font-medium">{{ item.isOpen ? '' : item.title }}</h3>
                    <span class="icon transform transition-transform duration-300"
                        :class="item.isOpen ? 'rotate-180' : ''">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                            <path v-if="!item.isOpen" d="M6 12H12M12 12H18M12 12V18M12 12V6" stroke="white"
                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                            <path v-else d="M6 12H18" stroke="white" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round" />
                        </svg>
                    </span>
                </div>
                <div v-if="item.isOpen" class="px-[30px] pb-[57px] bg-dark relative">
                    <p class="text-white text-2xl font-medium">{{ item.title }}</p>
                    <p class="text-secondary text-base">{{ item.content }}</p>
                    <img src="/src/assets/images/services_light.png" alt="alt"
                        class="absolute bottom-0 left-1/4 right-1/4">
                </div>
            </div>
        </div>

        <p class="text-2xl lg:text-[80px] font-bold text-white text-center">Discover Our Location</p>
        <p class="text-sm text-secondary text-center">Whether you're visiting us in person or simply want to know where
            we're based, here's some helpful information about our location</p>
        <iframe class="w-full h-[500px] rounded-[10px] lg:rounded-[0px]"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3959.767434824036!2d110.4561564!3d-7.036596899999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e708db8e3d600bb%3A0x827587e36a47f2e8!2sNUSATECH%20DEVELOPMENT!5e0!3m2!1sid!2sid!4v1739869638986!5m2!1sid!2sid"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-3 w-full">
            <div class="w-full text-base">
                <div class="flex flex-row gap-[14px]">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                        <path
                            d="M24.8438 26.25C22.3021 26.25 19.776 25.625 17.2656 24.375C14.7552 23.125 12.5 21.5 10.5 19.5C8.5 17.5 6.875 15.2448 5.625 12.7344C4.375 10.224 3.75 7.69792 3.75 5.15625C3.75 4.76042 3.88542 4.42708 4.15625 4.15625C4.42708 3.88542 4.76042 3.75 5.15625 3.75H9.53125C9.82292 3.75 10.0781 3.84896 10.2969 4.04688C10.5156 4.24479 10.6562 4.51042 10.7188 4.84375L11.5625 8.78125C11.6042 9.07292 11.599 9.33854 11.5469 9.57812C11.4948 9.81771 11.3854 10.0208 11.2188 10.1875L8.09375 13.3438C9.26042 15.2812 10.5677 16.9688 12.0156 18.4062C13.4635 19.8438 15.1042 21.0625 16.9375 22.0625L19.9062 19C20.1146 18.7708 20.3542 18.6094 20.625 18.5156C20.8958 18.4219 21.1667 18.4062 21.4375 18.4688L25.1562 19.2812C25.4688 19.3438 25.7292 19.5 25.9375 19.75C26.1458 20 26.25 20.2917 26.25 20.625V24.8438C26.25 25.2396 26.1146 25.5729 25.8438 25.8438C25.5729 26.1146 25.2396 26.25 24.8438 26.25Z"
                            fill="url(#paint0_linear_319_2142)" />
                        <defs>
                            <linearGradient id="paint0_linear_319_2142" x1="26.25" y1="26.25" x2="7.73472" y2="0.845826"
                                gradientUnits="userSpaceOnUse">
                                <stop stop-color="#004337" />
                                <stop offset="0.571547" stop-color="#04B86C" />
                                <stop offset="1" stop-color="#004337" />
                            </linearGradient>
                        </defs>
                    </svg>
                    <p class="text-secondary">Phone Number</p>
                </div>
                <p class="text-white"> +6296-707-50-707</p>
            </div>
            <div class="w-full text-base">
                <div class="flex flex-row gap-[14px]">
                    <svg xmlns="http://www.w3.org/2000/svg" width="31" height="30" viewBox="0 0 31 30" fill="none">
                        <path
                            d="M4.70801 25C4.20801 25 3.77051 24.8125 3.39551 24.4375C3.02051 24.0625 2.83301 23.625 2.83301 23.125V6.875C2.83301 6.375 3.02051 5.9375 3.39551 5.5625C3.77051 5.1875 4.20801 5 4.70801 5H25.958C26.458 5 26.8955 5.1875 27.2705 5.5625C27.6455 5.9375 27.833 6.375 27.833 6.875V23.125C27.833 23.625 27.6455 24.0625 27.2705 24.4375C26.8955 24.8125 26.458 25 25.958 25H4.70801ZM15.333 15.5625L25.958 8.59375V6.875L15.333 13.6875L4.70801 6.875V8.59375L15.333 15.5625Z"
                            fill="url(#paint0_linear_319_2148)" />
                        <defs>
                            <linearGradient id="paint0_linear_319_2148" x1="27.833" y1="25" x2="12.7876" y2="-0.804136"
                                gradientUnits="userSpaceOnUse">
                                <stop stop-color="#004337" />
                                <stop offset="0.571547" stop-color="#04B86C" />
                                <stop offset="1" stop-color="#004337" />
                            </linearGradient>
                        </defs>
                    </svg>
                    <p class="text-secondary">Email Address</p>
                </div>
                <p class="text-white">admin@nusatech.id</p>
            </div>
            <div class="w-full text-base">
                <div class="flex flex-row gap-[14px]">
                    <svg xmlns="http://www.w3.org/2000/svg" width="31" height="30" viewBox="0 0 31 30" fill="none">
                        <path
                            d="M15.6698 14.687C16.2721 14.687 16.7868 14.4725 17.2139 14.0436C17.641 13.6147 17.8545 13.0991 17.8545 12.4967C17.8545 11.8944 17.64 11.3797 17.2111 10.9526C16.7822 10.5256 16.2665 10.312 15.6642 10.312C15.0619 10.312 14.5472 10.5265 14.1201 10.9554C13.693 11.3843 13.4795 11.9 13.4795 12.5023C13.4795 13.1046 13.694 13.6193 14.1229 14.0464C14.5518 14.4735 15.0674 14.687 15.6698 14.687ZM15.667 27.4995C12.3128 24.6453 9.80762 21.9943 8.15137 19.5464C6.49512 17.0985 5.66699 14.8328 5.66699 12.7495C5.66699 9.62451 6.6722 7.13493 8.68262 5.28076C10.693 3.4266 13.0212 2.49951 15.667 2.49951C18.3128 2.49951 20.641 3.4266 22.6514 5.28076C24.6618 7.13493 25.667 9.62451 25.667 12.7495C25.667 14.8328 24.8389 17.0985 23.1826 19.5464C21.5264 21.9943 19.0212 24.6453 15.667 27.4995Z"
                            fill="url(#paint0_linear_319_2154)" />
                        <defs>
                            <linearGradient id="paint0_linear_319_2154" x1="25.667" y1="27.4995" x2="4.1501"
                                y2="3.88145" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#004337" />
                                <stop offset="0.571547" stop-color="#04B86C" />
                                <stop offset="1" stop-color="#004337" />
                            </linearGradient>
                        </defs>
                    </svg>
                    <p class="text-secondary">Location</p>
                </div>
                <p class="text-white truncate">Ruko Citragrand Blok London C3, Kec. Tembalang, Kota Semarang, Jawa
                    Tengah 50276</p>
            </div>
        </div>



    </div>
</template>

<script>
import Craft from './Service/Craft.vue';
import Solution from './Service/Solution.vue';

export default {
    name: 'Contact',
    components: {
        Solution,
        Craft
    },
    data() {
        return {
            accordionItems: [
                {
                    title: 'The standard Lorem Ipsum passage.',
                    content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
                    isOpen: false
                },
                {
                    title: 'The standard Lorem Ipsum passage.',
                    content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
                    isOpen: false
                }
            ]
        };
    },
    methods: {
        toggleAccordion(index) {
            this.accordionItems[index].isOpen = !this.accordionItems[index].isOpen;
        }
    },
    mounted() {
    },
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