<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\TaskService;
use Response;

class HomePageController extends Controller
{
    protected $taskService;

    public function __construct(TaskService $taskService)
    {
        $this->taskService = $taskService;
    }

    public function index()
    {
        $my_format = $this->taskService->getFormatTask();
        return Response::json($my_format, 200, array(), JSON_PRETTY_PRINT);
        // gives the above output as rest.

        //-----------------------------------
        // The code below gives the output to the full stack page.

        //return view('page.homepage')->with('task',$task);
    }
}
