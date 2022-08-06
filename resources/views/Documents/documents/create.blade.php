@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New Document</h3>
                    @can('view-'.str_slug('Document'))
                        <a class="btn btn-success pull-right" href="{{url('/Documents/documents')}}">
                            <i class="icon-arrow-left-circle"></i> View Document</a>
                    @endcan
                    <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Back</a>
                    <div class="clearfix"></div>
                    <hr>
                    @if ($errors->any())
                        <ul class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    @endif

                    {!! Form::open(['url' => '/Documents/documents', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('Documents.documents.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
