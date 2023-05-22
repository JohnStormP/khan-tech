<template>
    <div class="col-4 post">
        <div class="image">
            <img :src="image" alt="" class="img-fluid"/>
        </div>
        <div class="category">
            {{ category }}
        </div>
        <div class="title">
            {{ title }}
        </div>
        <div class="single">
            <div class="date">
                {{ postDate }}
            </div>
            <div class="author">
                <a href=""> {{ author }}</a>
            </div>
            <div class="time-read">
                <img src="/storage/img/Clock.svg" class="clock" alt="clock">{{ readTime }}
            </div>
        </div>
    </div>
</template>

<script src="./SinglePost.js"></script>
