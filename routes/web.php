<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\CategoriesController;


Route::get('/', function () {
    return Inertia::render('Home', [
    ]);
});

Route::middleware(['auth', 'user-role:admin'])->group(function () {
    Route::resource('/posts', PostsController::class);
    Route::post('/posts/{post}/restore', [PostsController::class, 'restore'])->name('posts.restore');
    Route::resource('/categories', CategoriesController::class)->middleware('auth');
    Route::post('/categories/{category}/restore', [CategoriesController::class, 'restore'])->name('categories.restore');
});


require __DIR__ . '/auth.php';
