@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New HealthAndSafetyInspection</h3>
                    @can('view-'.str_slug('HealthAndSafetyInspection'))
                        <a class="btn btn-success pull-right" href="{{url('/health-and-safety-inspection/health-and-safety-inspection')}}">
                            <i class="icon-arrow-left-circle"></i> View HealthAndSafetyInspection</a>
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

                    {!! Form::open(['url' => '/health-and-safety-inspection/health-and-safety-inspection', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('HealthAndSafetyInspection.health-and-safety-inspection.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
