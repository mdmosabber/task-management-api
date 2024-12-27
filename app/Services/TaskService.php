<?php

namespace App\Services;

use App\Models\Task;
use Illuminate\Http\Request;
use App\Http\Requests\TaskRequest;

class TaskService
{
    public function getTasks(Request $request)
    {
        return Task::query()->where('user_id', auth()->id())
            ->when($request->status, fn($query, $status) => $query->where('status', $status))
            ->when($request->sort_by == 'due_date', fn($query) => $query->orderBy('due_date'))
            ->paginate(10);
    }


    public function store(TaskRequest $request)
    {
        $validated = $request->validated();
        $validated['user_id'] = auth()->id();

        return Task::create($validated);
    }


    public function update(TaskRequest $request, Task $task)
    {
        return $task->update($request->validated());
    }

    public function destroy(Task $task)
    {
        return $task->delete();
    }
}
