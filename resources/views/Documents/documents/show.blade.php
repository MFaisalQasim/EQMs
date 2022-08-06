{{-- @extends('layouts.master') --}}
@extends('layouts.master_frontend')
@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="col-12 col-lg-4">
                        <div class="documents_div">
                            <h2 class="h2">Document {{ $document->id }}</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                    </div>
                    @can('view-' . str_slug('documents'))
                        <a class="btn btn-success pull-right" href="{{ url('/Documents/documents') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                    <th>ID</th>
                                    <td>{{ $document->id }}</td>
                                </tr> --}}
                                <tr>
                                    <th> Name </th>
                                    <td> {{ $document->name }} </td>
                                </tr>
                                {{-- <tr>
                                    <th> Version </th>
                                    <td> {{ $document->version }} </td>
                                </tr> --}}
                                <tr>
                                    <th> File </th>
                                    @foreach ($documentFile as $item)
                                        <td> <a href='{{ asset($item->file) }}' download>
                                                Download File
                                            </a>
                                        </td>
                                    @endforeach
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
