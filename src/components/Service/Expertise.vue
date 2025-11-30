<template>
    <div class="container relative
     h-fit mx-auto flex flex-col justify-start items-start space-y-4 mt-[56px] p-4">
        <p class="text-2xl lg:text-[64px] font-bold text-white text-center lg:text-left">Our Expertise</p>
        <p class="text-sm text-secondary text-left">We have engineering teams tha specialize in varety of technologies, including </p>
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-12 w-full">
            <div
                class="relative rounded-[20px] p-[30px] w-full border-[1px] border-white-010 bg-dark flex flex-col gap-4 h-[199px]">
                <p class="text-white text-2xl font-semibold w-full text-center"> FrontEnd Dev</p>
                <div class="flex flex-row gap-4 justify-center items-center">
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/reactjs.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/angularjs.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/vuejs.png" alt="alt" class="w-10 h-10">
                    </div>
                </div>
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute z-10 left-1/4 bottom-0">
            </div>
            <div
                class="relative rounded-[20px] p-[30px] w-full border-[1px] border-white-010 bg-dark flex flex-col gap-4 h-[199px]">
                <p class="text-white text-2xl font-semibold w-full text-center">BackEnd Dev</p>
                <div class="flex flex-row gap-4 justify-center items-center">
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/ruby.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/golang.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/express.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/flask.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/fastify.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/laravel.png" alt="alt" class="w-10 h-10">
                    </div>
                </div>
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute z-10  left-1/4 bottom-0">
            </div>
            
            <div
                class="relative rounded-[20px] p-[30px] w-full border-[1px] border-white-010 bg-dark flex flex-col gap-4 h-[199px]">
                <p class="text-white text-2xl font-semibold w-full text-center"> Database </p>
                <div class="flex flex-row gap-4 justify-center items-center">
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/mysql.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/postgres.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/mongo.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/influx.png" alt="alt" class="w-10 h-10">
                    </div>
                </div>
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute z-10 left-1/4 bottom-0">
            </div>
            <div
                class="relative rounded-[20px] p-[30px] w-full border-[1px] border-white-010 bg-dark flex flex-col gap-4 h-[199px]">
                <p class="text-white text-2xl font-semibold w-full text-center">Mobile Dev </p>
                <div class="flex flex-row gap-4 justify-center items-center">
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/flutter.png" alt="alt" class="w-10 h-10">
                    </div>
                    <div class="p-5 rounded-full bg-white-010">
                        <img src="/src/assets/images/expertise/reactnative.png" alt="alt" class="w-10 h-10">
                    </div>
                </div>
                <img src="/src/assets/images/services_light.png" alt="alt" class="absolute z-10 left-1/4 bottom-0">
            </div>
            
            
            
           
        </div>
    </div>
</template>

<script>
export default {
    name: 'Expertise',
    data() {
        return {
        };
    },
    mounted() {
    }
};
</script>

<style scoped>
/* Add any component-specific styles here */
</style>