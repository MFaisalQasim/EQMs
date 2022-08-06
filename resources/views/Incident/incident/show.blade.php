@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="col-12 col-lg-4">
                        <div class="documents_div">
                            <h2 class="h2">Incident {{ $incident->id }}</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                    </div>
                    @can('view-' . str_slug('Incident'))
                        <a class="btn btn-success pull-right" href="{{ url('/incident/incident') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                    <th>ID</th>
                                    <td>{{ $incident->id }}</td>
                                </tr> --}}
                                <tr>
                                    <th> Incident Reporter </th>
                                    <td> {{ $incident->incident_reporter }} </td>
                                </tr>
                                <tr>
                                    <th> Date </th>
                                    <td> {{ $incident->date }} </td>
                                </tr>
                                <tr>
                                    <th> Incident Description </th>
                                    <td> {{ $incident->incident_description }} </td>
                                </tr>
                                <tr>
                                    <th> Incident Status  </th>
                                    <td> {{ $incident->check_status }} &nbsp; &nbsp;(0 means pending,  1 means closed) </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
