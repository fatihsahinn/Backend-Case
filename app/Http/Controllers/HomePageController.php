<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\TaskService;
use App\Http\Resources\TaskResource;
use Illuminate\Support\Facades\Http;
use Response;

class HomePageController extends Controller
{
    protected $taskService;

    public function __construct(TaskService $taskService)
    {
        $this->taskService = $taskService;
    }

    public function rest_output_index()
    {
        return Response::json($this->taskService->getFormatTask(), 200, array(), JSON_PRETTY_PRINT);
    }
    public function full_stack_output_index()
    {
        return view('page.homepage')->with('task',$this->taskService->getFormatTask());
    }

    public function resource_output_index()
    {
        return new TaskResource($this->taskService->getFormatTask());
    }

    public function http_index()
    {
        $response = Http::get('http://localhost/WEG-Backend-Case-Study/Backend-Case/public/api/gethttp')->json();
        return $response;
    }
}
