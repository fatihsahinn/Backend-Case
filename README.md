
## About Project

The project command:
php artisan tasksave:todb {task_id}

For Example:
php artisan tasksave:todb 1

This command saves the json data from the url to the db.

When you want to add a new url, go to the App/Console/Commands/GetTaskWithSaveDB.php directory.
Then define a variable for a new url.
That's it:
protected $url3 = "http://www.example.co/myjsondata";
Then you may need to fix or redefine the array according to the data type. According to your database and json data type. Then it will automatically save for you.
There are only 2 urls in my project now and I have configured it accordingly.

The project gives the share of the workload in tabular form to the screen as the final output.

