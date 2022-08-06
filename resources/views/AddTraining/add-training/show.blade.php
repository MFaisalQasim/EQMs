@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">AddTraining {{ $addtraining->id }}</h3>
                    @can('view-' . str_slug('AddTraining'))
                        <a class="btn btn-success pull-right" href="{{ url('/add_training/add-training') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                <tr>
                                    <th> Start Date </th>
                                    <td> {{ $addtraining->start_date }} </td>
                                </tr>
                                <tr>
                                    <th> End Date </th>
                                    <td> {{ $addtraining->end_date }} </td>
                                </tr>
                                <tr>
                                    <th> Location Or Link </th>
                                    <td> {{ $addtraining->Location_Or_Link }} </td>
                                </tr>
                                <tr>
                                    <th> Status </th>
                                    <td> {{ $addtraining->response }} </td>
                                </tr>
                                <tr>
                                    <th> MediaFiles </th>
                                    <td> {{ $addtraining->MediaFiles }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
