@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Calender {{ $calender->id }}</h3>
                    @can('view-'.str_slug('Calender'))
                        <a class="btn btn-success pull-right" href="{{ url('/calender/calender') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            {{-- <tr>
                                <th>ID</th>
                                <td>{{ $calender->id }}</td>
                            </tr> --}}
                            <tr><th> Title </th><td> {{ $calender->title }} </td></tr><tr><th> Start </th><td> {{ $calender->start }} </td></tr><tr><th> End </th><td> {{ $calender->end }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

