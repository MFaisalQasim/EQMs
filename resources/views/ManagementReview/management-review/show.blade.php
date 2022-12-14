@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">ManagementReview {{ $managementreview->id }}</h3>
                    @can('view-'.str_slug('ManagementReview'))
                        <a class="btn btn-success pull-right" href="{{ url('/management-review/management-review') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            {{-- <tr>
                                <th>ID</th>
                                <td>{{ $managementreview->id }}</td>
                            </tr> --}}
                            <tr><th> Upload Doc </th><td> {{ $managementreview->upload_doc }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

