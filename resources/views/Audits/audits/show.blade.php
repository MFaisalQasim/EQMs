@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Audit {{ $audit->id }}</h3>
                    @can('view-' . str_slug('audits'))
                        <a class="btn btn-success pull-right" href="{{ url('/audits/audits') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                <tr>
                                    <th> inspector_name </th>
                                    <td> {{ $audit->inspector_name }} </td>
                                </tr>
                                <tr>
                                    <th> Status </th>
                                    <td> {{ $audit->status }} </td>
                                </tr>
                                <tr>
                                    <th> Schedule </th>
                                    <td> {{ $audit->schedule }} </td>
                                </tr>
                                <tr>
                                    <th> signature </th>
                                    <td>{{ uniqid()  }} <img src="{{ $audit->signature }}" alt="">  </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
