@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">JobPosition {{ $jobposition->id }}</h3>
                    @can('view-'.str_slug('JobPosition'))
                        <a class="btn btn-success pull-right" href="{{ url('/job-position') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $jobposition->id }}</td>
                            </tr>
                            <tr><th> Job Title </th><td> {{ $jobposition->Job_title }} </td></tr><tr><th> Purpose </th><td> {{ $jobposition->Purpose }} </td></tr><tr><th> Answerable To </th><td> {{ $jobposition->Answerable_to }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

