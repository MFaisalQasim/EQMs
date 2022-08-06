@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New Audit</h3>
                    @can('view-'.str_slug('audits'))
                        <a class="btn btn-success pull-right" href="{{url('/audits/audits')}}">
                            <i class="icon-arrow-left-circle"></i> View Audit</a>
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

                    {!! Form::open(['url' => '/audits/audits', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('Audits.audits.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
