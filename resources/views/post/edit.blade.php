<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Post edit
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    <section>

                        <form method="post" action="{{ route('posts.update', $post->id) }}" class="mt-6 space-y-6">
                            @csrf
                            @method('put')
                            <div>
                                <x-input-label for="category" :value="__('Category')"/>
                                <select wire:model="selectedState" id="category_id" name="category_id"
                                        class="form-control">
                                    @foreach($categories as $category)
                                        <option
                                            value="{{ $category->id }}" {{($category->id == $post->category_id) ? 'selected' : ''}}>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div>
                                <x-input-label for="title" :value="__('Title')"/>
                                <x-text-input id="title" name="title" type="text" class="mt-1 block w-full"
                                              :value="old('title', $post->title)" required autofocus
                                              autocomplete="title"/>
                                <x-input-error class="mt-2" :messages="$errors->get('title')"/>
                            </div>

                            <div>
                                <x-input-label for="body" :value="__('Body')"/>
                                <x-text-input id="body" name="body" type="text" class="mt-1 block w-full"
                                              :value="old('body', $post->body)" autofocus
                                              autocomplete="body"/>
                                <x-input-error class="mt-2" :messages="$errors->get('body')"/>
                            </div>

                            <div>
                                <x-input-label for="image" :value="__('Image')"/>
                                <x-text-input id="image" name="image" type="text" class="mt-1 block w-full"
                                              :value="old('image', $post->image)"
                                              autofocus
                                              autocomplete="vin"/>
                                <x-input-error class="mt-2" :messages="$errors->get('image')"/>
                            </div>
                            <div>
                                <x-input-label for="is_published" :value="__('Is published')"/>
                                <select wire:model="selectedState" id="is_published" name="is_published"
                                        class="form-control">
                                    <option value="0"{{($post->is_published == 0) ? 'selected' : ''}}>Not published
                                    </option>
                                    <option value="1"{{($post->is_published == 1) ? 'selected' : ''}}>Published</option>
                                </select>
                            </div>

                            <div class="flex items-center gap-4">
                                <x-primary-button>{{ __('Save') }}</x-primary-button>

                            </div>
                        </form>
                    </section>

                </div>
            </div>
        </div>
    </div>

</x-app-layout>
