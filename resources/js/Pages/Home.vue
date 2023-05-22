<template>
    <div class="wrapper">
        <div class="content">
            <div id="root" class="top-content">
                <div class="container">
                    <div class="row">
                        <RandomPost :randomPost="random"/>
                        <LatestNews :news="latest"/>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <MainPost :main="main"/>
                </div>
            </div>
        </div>
        <Posts/>
    </div>

</template>

<script>
import RandomPost from "@/Pages/Home/RandomPost/RandomPost.vue";
import LatestNews from "@/Pages/Home/LatestNews/LatestNews.vue";
import MainPost from "@/Pages/Home/MainPost/MainPost.vue";
import Posts from "@/Pages/Home/Posts/Posts.vue";
import {defineComponent} from "vue";
import axios from "axios";

export default defineComponent({
    components: {Posts, MainPost, LatestNews, RandomPost},
    data() {
        return {
            posts: null,
            latest: null,
            main: null,
            random: null,
        };
    },
    mounted: function () {
        axios.get('/api/top-posts')
            .then(response => {
                this.latest = response.data.data.latest;
                this.main = response.data.data.main;
                this.random = response.data.data.random;
            })
            .catch(function (error) {
                console.log(error);
            });
    }
})
</script>
