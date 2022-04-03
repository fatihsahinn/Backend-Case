<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DBModel extends Model
{
    public function GetTaskList()
    {
        $list = DB::table('tasks')
            ->select('*')
            ->get();
        return $list;
    }
}
