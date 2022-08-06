@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create New Announcement</h3>
                    @can('view-'.str_slug('Announcement'))
                        <a class="btn btn-success pull-right" href="{{url('/Announcement/announcement')}}">
                            <i class="icon-arrow-left-circle"></i> View Announcement</a>
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

                    {!! Form::open(['url' => '/Announcement/announcement', 'class' => 'form-horizontal', 'files' => true]) !!}

                    @include ('AnnouncementController.announcement.form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
