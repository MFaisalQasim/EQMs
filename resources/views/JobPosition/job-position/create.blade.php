@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New JobPosition</h3>
                    @can('view-'.str_slug('JobPosition'))
                        <a class="btn btn-success pull-right" href="{{url('/job-position')}}">
                            <i class="icon-arrow-left-circle"></i> View JobPosition</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    @if ($errors->any())
                        <ul class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    @endif

                    {!! Form::open(['url' => '/job-position', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('JobPosition.job-position.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
