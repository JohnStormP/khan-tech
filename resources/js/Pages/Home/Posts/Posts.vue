<template>
    <div class="container mt-5">
        <div class="row">
            <SinglePost v-for="post in posts" :title="post.title" :image="post.image"/>
        </div>
        <div class="row">
            <div class="col">
                <div class="pagination-wrapper">
                    <ul class="pagination">
                        <li v-for="n in pagination.lastPage">{{ n }}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script src="./Posts.js"></script>
