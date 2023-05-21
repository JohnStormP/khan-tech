<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Add post
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    <section>
                        <header>
                            <h2 class="text-lg font-medium text-gray-900">
                                Add new post
                            </h2>
                        </header>

                        <form method="post" action="{{ route('posts.store') }}" enctype="multipart/form-data"
                              class="mt-6 space-y-6">
                            @csrf
                            <div>
                                <x-input-label for="category" :value="__('Category')"/>
                                <select wire:model="selectedState" id="category_id" name="category_id"
                                        class="form-control">
                                    <option value="" selected>Choose category</option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>


                            <div>
                                <x-input-label for="title" :value="__('Title')"/>
                                <x-text-input id="title" name="title" type="text" class="mt-1 block w-full" required
                                              autofocus
                                              autocomplete="title"/>
                                <x-input-error class="mt-2" :messages="$errors->get('title')"/>
                            </div>
                            <div>
                                <x-input-label for="body" :value="__('Body')"/>
                                <x-text-input id="body" name="body" type="text" class="mt-1 block w-full"/>
                                <x-input-error class="mt-2" :messages="$errors->get('body')"/>
                            </div>

                            <div>
                                <x-input-label for="image" :value="__('Image')"/>
                                <x-text-input id="image" name="image" type="file" class="mt-1 block w-full"
                                              autofocus
                                              autocomplete="image"/>
                                <x-input-error class="mt-2" :messages="$errors->get('image')"/>
                            </div>

                            <div>
                                <x-input-label for="is_published" :value="__('Is published')"/>
                                <select wire:model="selectedState" id="is_published" name="is_published"
                                        class="form-control">
                                    <option value="0" selected>Not published</option>
                                    <option value="1">Published</option>
                                </select>
                            </div>
                            <div class="flex items-center gap-4">
                                <x-primary-button> Save</x-primary-button>

                            </div>
                        </form>
                    </section>

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
