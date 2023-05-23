<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Post;

class PostsController extends Controller
{
    public function topPosts()
    {
        $threePosts = Post::with('category')->latest()->limit(3)->get();
        $onePost = Post::with('category')->latest()->offset(3)->first();
        $randPost = Post::with('category')->offset(4)->inRandomOrder()->first();
        return new PostResource([
            'latest' => $threePosts,
            'main' => $onePost,
            'random' => $randPost
        ]);
    }

    public function otherPosts()
    {
        return new PostResource(Post::with('category')->orderBy('id', 'desc')->paginate(5));
    }
}
