@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="col-12 col-lg-4">
                        <div class="documents_div">
                            <h2 class="h2">Announcement {{ $announcement->id }}</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                    </div>
                    @can('view-' . str_slug('Announcement'))
                        <a class="btn btn-success pull-right" href="{{ url('/Announcement/announcement') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                <tr>
                                    <th> Name </th>
                                    <td> {{ $announcement->name }} </td>
                                </tr>
                                <tr>
                                    <th> Details </th>
                                    <td> {{ $announcement->details }} </td>
                                </tr>
                                <tr>
                                    <th> Type </th>
                                    <td> {{ $announcement->type }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
