<template>

    <div class="col-md-4">
        <div id="latest-news">
            <div id="latest-news-title">
                <h1>Our Latest News</h1>
            </div>
            <div id="latest-news-items">
                <a href="#" v-for="item in news">
                    <div class="latest-news-item" v-bind:style="{ backgroundImage: 'url(' + item.image + ')' }">
                        <h3 class="post-title">{{ item.title }}</h3>
                        <div class="post-date">{{ newsDate }}</div>
                    </div>
                </a>
            </div>
        </div>
    </div>

</template>
<script src="./LatestNews.js"></script>
