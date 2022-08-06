@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">EmergencyResponseExercise {{ $emergencyresponseexercise->id }}</h3>
                    @can('view-' . str_slug('EmergencyResponseExercise'))
                        <a class="btn btn-success pull-right"
                            href="{{ url('/emergency-response-exercise/emergency-response-exercise') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                <th>ID</th>
                                <td>{{ $emergencyresponseexercise->id }}</td>
                            </tr> --}}
                                {{-- <tr>
                                    <th> Type </th>
                                    <td> {{ $emergencyresponseexercise->type }} </td>
                                </tr> --}}
                                <tr>
                                    <th> Schedule </th>
                                    <td> {{ $emergencyresponseexercise->schedule }} </td>
                                </tr>
                                <tr>
                                    <th> Review Date </th>
                                    <td> {{ $emergencyresponseexercise->review_date }} </td>
                                </tr>
                                <tr>
                                    <th> Invitation Status </th>
                                    <td> {{ $emergencyresponseexercise->invitation_status }} </td>
                                </tr>
                                <tr>
                                    <th> Corrective Actions</th>
                                    <td> {{ $emergencyresponseexercise->corrective_actions }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
