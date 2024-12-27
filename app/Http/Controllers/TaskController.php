<?php

namespace App\Http\Controllers;

use App\Http\Requests\TaskRequest;
use App\Models\Task;
use App\Services\TaskService;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    protected $taskService;

    public function __construct(TaskService $taskService)
    {
        $this->taskService = $taskService;
    }
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $tasks = $this->taskService->getTasks($request);

        if ($request->wantsJson()) {
            return response()->json(['data' => $tasks], 200);
        }

        return view('backend/tasks.index', compact('tasks'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('backend/tasks.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(TaskRequest  $request)
    {
        $task = $this->taskService->store($request);

        if ($request->wantsJson()) {
            return response()->json(['message' => 'Task created successfully.', 'data' => $task], 201);
        }

        return redirect()->route('tasks.index')->with('success', 'Task created successfully.');
    }

    public function show(Task $task, Request $request)
    {
        if ($request->wantsJson()) {
            return response()->json(['data' => $task], 200);
        }

        abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     */

    public function edit(Task $task)
    {
        return view('backend/tasks.edit', compact('task'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(TaskRequest $request, Task $task)
    {
        $this->taskService->update($request, $task);

        if ($request->wantsJson()) {
            return response()->json(['message' => 'Task updated successfully.', 'data' => $task], 200);
        }

        return redirect()->route('tasks.index')->with('success', 'Task updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Task $task, Request $request)
    {
        $this->taskService->destroy($task);

        if ($request->wantsJson()) {
            return response()->json(['message' => 'Task deleted successfully.'], 200);
        }

        return redirect()->route('tasks.index')->with('success', 'Task deleted successfully.');
    }
}
