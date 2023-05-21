<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Posts
        </h2>
    </x-slot>
    <div class="container pt-2">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left">
                    <h2>Add post to the database.</h2>
                </div>
                <div class="pull-right">
                    <a class="btn btn-success"
                       href="{{ route('posts.create') }}">Add post
                    </a>
                </div>
            </div>
        </div>

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif

        <table class="table table-bordered table_sort">
            <thead class="thead-dark">
            <tr>
                <th>No</th>
                <th>Category</th>
                <th>Title</th>
                <th>Body</th>
                <th>Image</th>
                <th>Is published</th>
                <th>Created at</th>
                <th>Updated at</th>
                <th>Updated by</th>
                <th>Deleted at</th>
                <th>Deleted by</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($posts as $post)
                <tr>
                    <td>{{ $post->id}}</td>
                    <td>{{ ($post->category) ? $post->category->name : 'Deleted Category' }}</td>
                    <td>{{ $post->title}}</td>
                    <td>{{ $post->body}}</td>
                    <td><img src="{{$post->image}}"></td>
                    <td>{{ ($post->is_published == 0) ? 'Not published' : 'Published' }}</td>
                    <td>{{ $post->created_at}}</td>
                    <td>{{ $post->updated_at}}</td>
                    <td>{{ ($post->updatedBy)? $post->updatedBy->name : ''}}</td>
                    <td>{{ $post->deleted_at}}</td>
                    <td>{{ ($post->deletedBy)? $post->deletedBy->name : ''}}</td>
                    <td class="d-flex">
                        @if($post->deleted_at != null)
                            <form action="{{ route('posts.restore',$post->id) }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-success bg-green-600 w-full">Restore</button>
                            </form>
                        @else
                            <form action="{{ route('posts.destroy',$post->id) }}" method="POST">
                                <a class="btn btn-info w-full" href="{{ route('posts.show',$post->id) }}">Show</a>
                                <a class="btn btn-primary w-full" href="{{ route('posts.edit',$post->id) }}">Edit</a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger bg-red-800 w-full">Delete</button>
                            </form>
                        @endif
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {!! $posts->links() !!}
    </div>
</x-app-layout>
