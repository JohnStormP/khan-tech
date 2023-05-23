<template>
    <div class="col-md-4">
        <div class="post m-b-72">
            <div class="image m-b-24">
                <img :src="image" alt="" class="img-fluid"/>
            </div>
            <div class="category m-b-8">
                <a href="#"><h4 class="bold">{{ category }}</h4></a>
            </div>
            <div class="title m-b-16">
                <h2 class="medium">{{ title }}</h2>
            </div>
            <div class="post-footer">
                <div class="post-date">
                    {{ postDate }}
                </div>
                <div class="post-author">
                    <a href=""> {{ author }}</a>
                </div>
                <div class="time-read">
                    <img src="/storage/img/Clock.svg" class="clock" alt="clock">{{ readTime }}
                </div>
            </div>
        </div>
    </div>
</template>

<script src="./SinglePost.js"></script>
