<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Post;

class PostsController extends Controller
{
    public function topPosts()
    {
        $threePosts = Post::latest()->limit(3)->get();
        $onePost = Post::latest()->offset(3)->first();
        $randPost = Post::offset(4)->inRandomOrder()->first();
        return new PostResource([
            'latest' => $threePosts,
            'main' => $onePost,
            'random' => $randPost
        ]);
    }

    public function otherPosts()
    {
        return new PostResource(Post::orderBy('id', 'desc')->paginate(5));
    }
}
