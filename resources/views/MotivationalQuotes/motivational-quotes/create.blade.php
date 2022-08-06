@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New MotivationalQuote</h3>
                    @can('view-' . str_slug('motivationalquotes'))
                        <a class="btn btn-success pull-right" href="{{ url('/motivationalquotes/motivational-quotes') }}">
                            <i class="icon-arrow-left-circle"></i> View MotivationalQuote</a>
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

                    {!! Form::open(['url' => '/motivationalquotes/motivational-quotes', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('MotivationalQuotes.motivational-quotes.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
