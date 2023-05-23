import axios from "axios";
import SinglePost from "@/Pages/Home/SinglePost/SinglePost.vue";

export default {
    components: {SinglePost},
    data() {
        return {
            posts: null,
            pagination: {
                currentPage: 1,
                lastPage: null,
                links: null,
            },
        };
    },

    mounted: function () {
        axios.get('/api/other-posts')
            .then(response => {
                this.posts = response.data.data;
                this.pagination.currentPage = response.data.current_page;
                this.pagination.lastPage = response.data.last_page;
                this.pagination.links = response.data.links;

            })
            .catch(function (error) {
                console.log(error);
            });
    },

    methods: {
        pageClick(page) {
            console.log(page)
            axios.get(page)
                .then(response => {
                    this.posts = response.data.data;
                    this.pagination.currentPage = response.data.current_page;
                    this.pagination.links = response.data.links;
                })
                .catch(function (error) {
                    console.log(error);
                });

        }
    }
}
