@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">HealthAndSafetyInspection {{ $healthandsafetyinspection->id }}</h3>
                    @can('view-' . str_slug('HealthAndSafetyInspection'))
                        <a class="btn btn-success pull-right"
                            href="{{ url('/health-and-safety-inspection/health-and-safety-inspection') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                {{-- <tr>
                                <th>ID</th>
                                <td>{{ $healthandsafetyinspection->id }}</td>
                            </tr> --}}
                                <tr>
                                    <th> Inspection Timing </th>
                                    <td> {{ $healthandsafetyinspection->inspection_timing }} </td>
                                </tr>
                                <tr>
                                    <th> Invitation Status </th>
                                    <td> {{ $healthandsafetyinspection->invitation_status }} </td>
                                </tr>
                                {{-- <tr>
                                    <th> Review </th>
                                    <td> {{ $healthandsafetyinspection->review }} </td>
                                </tr> --}}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
