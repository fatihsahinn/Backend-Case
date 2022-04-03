<?php
namespace App\Services;

use App\Models\User;
use Response;
use App\Models\DBModel;

class TaskService
{
    public $task_data;

    public function __construct()
    {
        $model = new DBModel();
        $list = $model->GetTaskList();
        $this->task_data = $list;
    }

    public function getFullTask()
    {
        return $this->task_data;
    }
}
