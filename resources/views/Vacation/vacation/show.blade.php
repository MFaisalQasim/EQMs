@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Vacation {{ $vacation->id }}</h3>
                    @can('view-' . str_slug('Vacation'))
                        <a class="btn btn-success pull-right" href="{{ url('/vacation/vacation') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                <th>ID</th>
                                <td>{{ $vacation->id }}</td>
                            </tr> --}}
                                <tr>
                                    <th> Name </th>
                                    <td> {{ $vacation->name }} </td>
                                </tr>
                                <tr>
                                    <th> Approval </th>
                                    <td> {{ $vacation->approval }} </td>
                                </tr>
                                <tr>
                                    <th> Start Date </th>
                                    <td> {{ $vacation->start_date }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
