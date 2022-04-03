@extends('layout.index')
@section('page_add_head')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/jquery.dataTables.min.css" integrity="sha512-1k7mWiTNoyx2XtmI96o+hdjP8nn0f3Z2N4oF/9ZZRgijyV4omsKOXEnqL1gKQNPy2MTSP9rIEWGcH/CInulptA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@endsection
@section('page_content')
    <main role="main" class="container">
        <h1 class="mt-5">Backend Developer Case Study</h1>
        <table id="taskTable" class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Task Name</th>
                <th scope="col">Task Level</th>
                <th scope="col">Task Time</th>
                <th scope="col">Task Type</th>
                <th scope="col">Task End Time</th>
            </tr>
            </thead>
            <tbody>
            @if(isset($task))
                @foreach($task as $data)
                    <tr>
                        <th scope="row">{{ $data->id }}</th>
                        <td>{{ $data->task_name }}</td>
                        <td>{{ $data->task_level }}</td>
                        <td>{{ $data->task_time }}</td>
                        <td>{{ $data->task_type }}</td>
                        <td>{{ \App\Http\Controllers\Controller::task_get($data->task_level,$data->task_time) }}</td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
    </main>
@endsection

@section('page_javascript')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js" integrity="sha512-BkpSL20WETFylMrcirBahHfSnY++H2O1W+UnEEO4yNIl+jI2+zowyoGJpbtk6bx97fBXf++WJHSSK2MV4ghPcg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script type="text/javascript">
        $(document).ready( function () {
            $('#taskTable').DataTable();
        } );
    </script>
@endsection
