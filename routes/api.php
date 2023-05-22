<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\PostsController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/top-posts',[PostsController::class, 'topPosts']);
Route::get('/other-posts',[PostsController::class, 'otherPosts']);
