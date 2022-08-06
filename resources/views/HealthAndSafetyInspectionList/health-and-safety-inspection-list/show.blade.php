@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">HealthAndSafetyInspectionList {{ $healthandsafetyinspectionlist->id }}
                    </h3>
                    @can('view-' . str_slug('HealthAndSafetyInspectionList'))
                        <a class="btn btn-success pull-right" href="{{ url('/H-And-S-inspection-list') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                                <tr>
                                    <th> List Item </th>
                                    <td> {{ $HAndSinspectionlist->areas_inspected }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
