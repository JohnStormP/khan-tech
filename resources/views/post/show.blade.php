<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Post
        </h2>
    </x-slot>
    <div class="container pt-6">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left">
                    <h2><strong>Title:</strong> {{ $post->title }}</h2>
                </div>
                <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('posts.index') }}"> {{  __('Back')  }}</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>No:</strong>
                    {{ $post->id }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Category:</strong>
                    {{ ($post->category) ? $post->category->name : 'Deleted category'  }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Title:</strong>
                    {{ $post->title }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Body:</strong>
                    {{ $post->body }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Image</strong>
                    {{ $post->image }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Is published:</strong>
                    {{ $post->is_published }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
