<?php
namespace App\Services;

use App\Http\Resources\FormatResource;
use Illuminate\Support\Arr;
use App\Http\Controllers\Controller;

class FormatService
{
    public function formatted_data($json_data,$dbId)
    {
        if($dbId == 1)
            return Controller::format_1(trim(json_encode($json_data['id']),'"'),json_encode($json_data['zorluk']),json_encode($json_data['sure']),$dbId);
        else if($dbId == 2)
            return Controller::format_2(trim(json_encode(array_key_first($json_data)),'"'),json_encode(array_values($json_data)[0]['level']),json_encode(array_values($json_data)[0]['estimated_duration']),$dbId);
    }
}
