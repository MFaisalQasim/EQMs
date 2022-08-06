@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="col-12 col-lg-4">
                        <div class="documents_div">
                            <h2 class="h2">MotivationalQuote {{ $motivationalquote->id }}</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                    </div>
                    @can('view-' . str_slug('motivational-quotes'))
                        <a class="btn btn-success pull-right" href="{{ url('/motivationalquotes/motivational-quotes') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                    <th>ID</th>
                                    <td>{{ $motivationalquote->id }}</td>
                                </tr> --}}
                                <tr>
                                    <th> Qoute </th>
                                    <td> {{ $motivationalquote->qoute }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
