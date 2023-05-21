<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Symfony\Component\HttpFoundation\RedirectResponse;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view('category.index', ['categories' => Category::withTrashed()->orderByDesc('id')->paginate(10)]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('category.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        Category::create($request->all());
        return redirect()->route('categories.index')->with('success', __('Category added successfully'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category): View
    {
        return view('category.show', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category): View
    {
        return view('category.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category): RedirectResponse
    {
        $category->update($request->all());
        return redirect()->route('categories.index')->with('success', __('Category updated successfully'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category): RedirectResponse
    {
        $category->delete();
        return redirect()->route('categories.index')->with('success', __('Category deleted successfully'));
    }

    public function restore($category_id): RedirectResponse
    {
        $category = Category::onlyTrashed()->find($category_id)->restore();
        return redirect()->route('categories.index')->with('success', __('Category restored successfully'));
    }
}
