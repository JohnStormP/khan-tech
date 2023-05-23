<template>
    <div id="main" class="mid-content m-b-72">
        <div class="row">
            <div class="col-md-12">
                <div id="main-post" class="post">
                    <div id="main-post-img">
                        <img v-if="main" :src="main.image"
                             alt="yoga studio" class="img-fluid">
                    </div>
                    <div id="main-post-text">
                        <div class="post-category">
                            <h4 class="bold"><a v-if="main" href="#">{{ main.category.name }}</a></h4>
                        </div>
                        <div class="post-title">
                            <h2 class="medium" v-if="main">{{ main.title }}</h2>
                        </div>
                        <div class="post-text" v-if="main">
                            {{ main.body }}
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
        </div>
    </div>
</template>
<script src="./MainPost.js"></script>
