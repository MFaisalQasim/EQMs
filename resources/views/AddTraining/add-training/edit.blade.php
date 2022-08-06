@extends('layouts.master')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Edit AddTraining #{{ $addtraining->id }}</h3>
                    @can('view-'.str_slug('AddTraining'))
                        <a class="btn btn-success pull-right" href="{{ url('/add_training/add-training') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
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

                    {!! Form::model($addtraining, [
                        'method' => 'PATCH',
                        'url' => ['/add_training/add-training', $addtraining->id],
                        'class' => 'form-horizontal',
                        'files' => true
                    ]) !!}

                    @include ('AddTraining.add-training.update', ['submitButtonText' => 'Update'])

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
