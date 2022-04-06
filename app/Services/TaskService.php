<?php
namespace App\Services;

use App\Models\DBModel;
use App\Http\Controllers\Controller;
use Response;

class TaskService
{
    public $task_data;

    public function __construct()
    {
        $model = new DBModel();
        $list = $model->GetTaskList();
        $this->task_data = $list;
    }
    public function getFormatTask()
    {
        foreach($this->task_data as $item)
        {
            $calculated = Controller::task_get($item->task_level,$item->task_time);
            $item->task_time = $calculated;
        }

        return $this->task_data;
    }
}
