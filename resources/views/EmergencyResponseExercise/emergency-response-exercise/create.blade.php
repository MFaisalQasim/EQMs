@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New EmergencyResponseExercise</h3>
                    @can('view-'.str_slug('EmergencyResponseExercise'))
                        <a class="btn btn-success pull-right" href="{{url('/emergency-response-exercise/emergency-response-exercise')}}">
                            <i class="icon-arrow-left-circle"></i> View EmergencyResponseExercise</a>
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

                    {!! Form::open(['url' => '/emergency-response-exercise/emergency-response-exercise', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('EmergencyResponseExercise.emergency-response-exercise.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
