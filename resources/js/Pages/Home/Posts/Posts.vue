<template>
    <div class="container mt-5">
        <div class="row">
            <SinglePost v-for="post in posts" :title="post.title" :image="post.image" :category="post.category.name"/>
        </div>
        <div class="row">
            <div class="col">
                <div class="pagination-wrapper">
                    <ul class="pagination">
<!--                        <li v-for="n in pagination.lastPage"><a href="">{{ n }}</a> </li>-->
                        <li v-for="n in pagination.links"><div v-if="n.url"><div @click="pageClick(n.url)" v-html="n.label"></div></div></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script src="./Posts.js"></script>
