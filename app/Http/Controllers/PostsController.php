<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Symfony\Component\HttpFoundation\RedirectResponse;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view('post.index', ['posts' => Post::withTrashed()->orderByDesc('id')->paginate(5)]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        $categories = Category::all();
        return view('post.add', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        Post::create($request->all());
        return redirect()->route('posts.index')->with('success', __('Post added successfully'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post): View
    {
        return view('post.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post): View
    {
        $categories = Category::all();
        return view('post.edit', compact('post', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post): RedirectResponse
    {
        $request['updated_by'] = auth()->user()->id;
        $post->update($request->all());
        return redirect()->route('posts.index')->with('success', __('Post updated successfully'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post): RedirectResponse
    {
        $user_id = auth()->user()->id;
        $post->update(['deleted_by' => $user_id]);
        $post->delete();
        return redirect()->route('posts.index')->with('success', __('Post deleted successfully'));
    }
}
