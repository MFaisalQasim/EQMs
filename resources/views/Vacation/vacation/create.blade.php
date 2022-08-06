@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New Vacation</h3>
                    <a class="btn btn-success pull-right ml-5" href="{{ url('/') }}"> Back</a>
                    @can('view-'.str_slug('Vacation'))
                        <a class="btn btn-success pull-right mr-3" href="{{url('/vacation/vacation')}}">
                            <i class="icon-arrow-left-circle"></i> View Vacation</a>
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

                    {!! Form::open(['url' => '/vacation/vacation', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('Vacation.vacation.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
