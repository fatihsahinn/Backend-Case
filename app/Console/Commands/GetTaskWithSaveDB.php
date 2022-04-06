<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use App\Models\DBModel;
use App\Services\FormatService;

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

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $dbId = $this->argument('db_id');

        $json = file_get_contents($dbId == 1 ? config('app.rest_url_1') : ($dbId == 2 ? config('app.rest_url_2') : "NULL"));
        $json_data = json_decode($json, true);

        $service = new FormatService();

        for($i=0;$i<count($json_data);$i++)
        {
            $my_format = $service->formatted_data($json_data[$i],$dbId);
            DB::table('tasks')->insert($my_format);
        }

    }
}
