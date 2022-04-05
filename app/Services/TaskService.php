<?php
namespace App\Services;

use App\Models\DBModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

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

    public function getFormatTask()
    {
        $final = array();
        $cont = new Controller();
        foreach($this->task_data as $item)
        {
            unset($item->id);
            unset($item->task_type);
            $time = $cont->TaskCalculate($item->task_level,$item->task_time);
            $item->task_time = $time;
            array_push($final,$item);
        }

        return $final;
    }
}
