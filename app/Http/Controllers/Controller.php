<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    protected $max_work_time = 45;
    protected $hour = 1;
    protected $dev_array = ([
        'DEV1' => '1',
        'DEV2' => '2',
        'DEV3' => '3',
        'DEV4' => '4',
        'DEV5' => '5',
    ]);

    public function TaskCalculate($level,$time)
    {
        foreach($this->dev_array as $item => $value)
        {
            if($level == $value)
            {
                $calculated = $time/$this->hour;
                if($this->max_work_time < $calculated)
                    return $item." can finish this work in ".$calculated." Hour. This job takes over ".$this->max_work_time." hours.";
                else
                    return $item." can finish this work in ".$calculated." Hour";
            }
        }
        return "NULL";
    }

    public static function task_get($level,$time) {
        $task = new Controller();
        return $task->TaskCalculate($level,$time);
    }
}
