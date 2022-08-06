@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">personalRecord {{ $personalrecord->id }}</h3>
                    @can('view-' . str_slug('personal-records'))
                        <a class="btn btn-success pull-right" href="{{ url('/personalRecords/personal-records') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                    <th>ID</th>
                                    <td>{{ $personalrecord->id }}</td>
                                </tr> --}}
                                <tr>
                                    <th> Name </th>
                                    <td> {{ $personalrecord->name }} </td>
                                </tr>
                                <tr>
                                    <th> Position </th>
                                    <td> {{ $personalrecord->position }} </td>
                                </tr>
                                <tr>
                                    <th> Details </th>
                                    <td> {{ $personalrecord->details }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
