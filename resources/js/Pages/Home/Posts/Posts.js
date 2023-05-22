import axios from "axios";
import SinglePost from "@/Pages/Home/SinglePost/SinglePost.vue";

export default {
    components: {SinglePost},
    data() {
        return {
            posts: null,
            pagination: {
                currentPage: 1,
                lastPage: null
            },
        };
    },

    mounted: function () {
        axios.get('/api/other-posts')
            .then(response => {
                this.posts = response.data.data;
                this.pagination.currentPage = response.data.current_page;
                this.pagination.lastPage = response.data.last_page;
            })
            .catch(function (error) {
                console.log(error);
            });
    }
}
