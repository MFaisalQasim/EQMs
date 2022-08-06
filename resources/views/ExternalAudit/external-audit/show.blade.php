@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">ExternalAudit {{ $externalaudit->id }}</h3>
                    @can('view-'.str_slug('ExternalAudit'))
                        <a class="btn btn-success pull-right" href="{{ url('/external-audit') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            {{-- <tr>
                                <th>ID</th>
                                <td>{{ $externalaudit->id }}</td>
                            </tr> --}}
                            <tr><th> Name </th><td> {{ $externalaudit->name }} </td></tr><tr><th> Schedule </th><td> {{ $externalaudit->schedule }} </td></tr><tr><th> Status </th><td> {{ $externalaudit->status }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

