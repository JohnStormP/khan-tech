<template>
    <div class="col-md-8">
        <div id="random-post" class="post">
            <div id="random-post-img">
                <img v-if="randomPost" :src="randomPost.image"
                     alt="image" class="img-fluid">
            </div>

            <div id="random-post-text">
                <div class="post-category">
                    <h4 class="bold"><a v-if="randomPost" href="#">{{ randomPost.category.name }}</a></h4>
                </div>
                <div class="post-title">
                    <h2 class="medium" v-if="randomPost">{{ randomPost.title }}</h2>
                </div>
                <div class="post-text" v-if="randomPost">
                    {{ randomPost.body }}
                </div>
                <div class="post-footer">
                    <div class="post-date">
                        {{ postDate }}
                    </div>
                    <div class="post-author">
                        <a href="">{{ author }}</a>
                    </div>
                    <div class="post-time-read">
                        <img src="/storage/img/Clock.svg" class="clock" alt="clock">{{ readTime }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script src="./RandomPost.js"></script>
