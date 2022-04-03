<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use App\Models\DBModel;

class GetTaskWithSaveDB extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'tasksave:todb {db_id}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This Command for Data Save DB';

    /**
     * The console command save data db.
     *
     * @var string
     */
    protected $url = "http://www.mocky.io/v2/5d47f24c330000623fa3ebfa";
    protected $url2 = "http://www.mocky.io/v2/5d47f235330000623fa3ebf7";

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $dbId = $this->argument('db_id');

        $json = file_get_contents($dbId == 1 ? $this->url : ($dbId == 2 ? $this->url2 : "NULL"));
        $json_data = json_decode($json, true);

        for($i=0;$i<count($json_data);$i++)
        {
            if($dbId == 1)
            {
                $new_data = array([
                    'task_name' => trim(json_encode($json_data[$i]['id']),'"'),
                    'task_level' => json_encode($json_data[$i]['zorluk']),
                    'task_time' => json_encode($json_data[$i]['sure']),
                    'task_type' => $dbId
                ]);
            }
            else if($dbId == 2){
                // I am setting the incoming data according to the database.
                $new_data = array([
                    'task_name' => trim(json_encode(array_key_first($json_data[$i])),'"'),
                    'task_level' => json_encode(array_values($json_data[$i])[0]['level']),
                    'task_time' => json_encode(array_values($json_data[$i])[0]['estimated_duration']),
                    'task_type' => $dbId
                ]);
            }
            // else if(condition)
            // bla bla bla

            DB::table('tasks')->insert($new_data);
        }

    }
}
