@extends('layouts.app')

@section('content')
    <div class="container">
        <a href="{{ route('tasks.create') }}" class="btn btn-primary my-3">Create Task</a>
        <form method="GET" class="mb-3">
            <select name="status" onchange="this.form.submit()">
                <option value="">Filter by Status</option>
                <option value="Pending" {{ request('status') == 'Pending' ? 'selected' : '' }}>Pending</option>
                <option value="In Progress" {{ request('status') == 'In Progress' ? 'selected' : '' }}>In Progress</option>
                <option value="Completed" {{ request('status') == 'Completed' ? 'selected' : '' }}>Completed</option>
            </select>
            <select name="sort_by" onchange="this.form.submit()">
                <option value="">Sort by</option>
                <option value="due_date" {{ request('sort_by') == 'due_date' ? 'selected' : '' }}>Due Date</option>
            </select>
        </form>

        <table class="table table-border">
            <thead>
                <tr>
                    <th>Sl</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($tasks as $key => $task)
                <tr>
                    <td> {{ $key + 1 }}</td>
                    <td>{{ $task->title }} </td>
                    <td> {{ \Illuminate\Support\Str::limit($task->description, 50) }} </td>
                    <td> {{ $task->status }} </td>
                    <td class="d-flex gap-2">
                        <a href="{{ route('tasks.edit', $task) }}" class="btn btn-sm btn-info">Edit</a>
                        <form action="{{ route('tasks.destroy', $task) }}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
            </tbody>
            @endforeach
        </table>

        @if($tasks->links())
            {{$tasks->links()}}
        @endif

    </div>
@endsection
