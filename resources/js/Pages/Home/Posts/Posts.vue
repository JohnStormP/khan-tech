<template>
    <div class="posts container mt-5">
        <div class="row">
            <SinglePost v-for="post in posts" :title="post.title" :image="post.image" :category="post.category.name"/>
        </div>
        <div class="row">
            <div class="col">
                <div class="pagination-wrapper m-b-72">
                    <ul class="pagination">
                        <li @click="pageClick(n.url)" v-for="n in pagination.links">
                            <div v-if="n.url">
                                <div v-html="n.label"></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script src="./Posts.js"></script>
