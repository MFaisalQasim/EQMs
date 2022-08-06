@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New HealthAndSafetyInspectionList</h3>
                    @can('view-'.str_slug('HealthAndSafetyInspectionList'))
                        <a class="btn btn-success pull-right" href="{{url('/H-And-S-inspection-list')}}">
                            <i class="icon-arrow-left-circle"></i> View HealthAndSafetyInspectionList</a>
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

                    {!! Form::open(['url' => '/H-And-S-inspection-list', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('HealthAndSafetyInspectionList.H-And-S-inspection-list.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
