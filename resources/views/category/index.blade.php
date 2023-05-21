<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Categories
        </h2>
    </x-slot>
    <div class="container pt-2">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left">
                    <h2>Add category to the database.</h2>
                </div>
                <div class="pull-right">
                    <a class="btn btn-success"
                       href="{{ route('categories.create') }}">Add category
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
                <th>Name</th>
                <th>Created at</th>
                <th>Deleted at</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($categories as $category)
                <tr>
                    <td>{{ $category->id}}</td>
                    <td>{{ $category->name}}</td>
                    <td>{{ $category->created_at}}</td>
                    <td>{{ $category->deleted_at}}</td>
                    <td class="d-flex">
                        @if($category->deleted_at != null)
                            <form action="{{ route('categories.restore',$category->id) }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-success bg-green-600 w-auto">Restore</button>
                            </form>
                        @else
                            <form action="{{ route('categories.destroy',$category->id) }}" method="POST">
                                <a class="btn btn-info w-auto"
                                   href="{{ route('categories.show',$category->id) }}">Show</a>
                                <a class="btn btn-primary w-auto" href="{{ route('categories.edit',$category->id) }}">Edit</a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger bg-red-800 w-auto">Delete</button>
                            </form>
                        @endif
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {!! $categories->links() !!}
    </div>
</x-app-layout>
