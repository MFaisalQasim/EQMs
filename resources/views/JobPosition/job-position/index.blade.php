@extends('layouts.master_frontend')
{{-- @push('css')
    <link href="{{ asset('plugins/components/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
@endpush --}}

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="row">
                        <div class="documents_div mt-0 mb-1">
                            <h2 class="h2">Jobposition</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                        <div class="col d_flex_center_end">
                            @can('add-' . str_slug('JobPosition'))
                                <a class="btn btn-success pull-right" href="{{ url('/job-position/create') }}"><i
                                        class="icon-plus"></i> Add Jobposition</a>
                            @endcan
                            <div class="clearfix"></div>
                        </div>
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-borderless" id="myTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Job Title</th>
                                        <th>Purpose</th>
                                        <th>Answerable To</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($jobposition as $item)
                                        <tr>
                                            <td>{{ $loop->iteration or $item->id }}</td>
                                            <td>{{ $item->Job_title }}</td>
                                            <td>{{ $item->Purpose }}</td>
                                            <td>{{ $item->Answerable_to }}</td>
                                            <td>
                                                @can('view-' . str_slug('JobPosition'))
                                                    <a href="{{ url('/job-position/' . $item->id) }}" title="View JobPosition">
                                                        <button class="btn btn-info btn-sm">
                                                            <i class="fa fa-eye" aria-hidden="true"></i> View
                                                        </button>
                                                    </a>
                                                @endcan

                                                @can('edit-' . str_slug('JobPosition'))
                                                    <a href="{{ url('/job-position/' . $item->id . '/edit') }}"
                                                        title="Edit JobPosition">
                                                        <button class="btn btn-primary btn-sm">
                                                            <i class="fa fa-pencil-square-o" aria-hidden="true"> </i> Edit
                                                        </button>
                                                    </a>
                                                @endcan

                                                @can('delete-' . str_slug('JobPosition'))
                                                    {!! Form::open([
                                                        'method' => 'DELETE',
                                                        'url' => ['/job-position', $item->id],
                                                        'style' => 'display:inline',
                                                    ]) !!}
                                                    {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', [
                                                        'type' => 'submit',
                                                        'class' => 'btn btn-danger btn-sm',
                                                        'title' => 'Delete JobPosition',
                                                        'onclick' => 'return confirm("Confirm delete?")',
                                                    ]) !!}
                                                @endcan
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="pagination-wrapper"> {!! $jobposition->appends(['search' => Request::get('search')])->render() !!} </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    @endsection



    @push('js')
        {{-- <script src="{{ asset('plugins/components/toast-master/js/jquery.toast.js') }}"></script> --}}

        {{-- <script src="{{ asset('plugins/components/datatables/jquery.dataTables.min.js') }}"></script>  --}}
        <!-- start - This is for export functionality only -->
        <!-- end - This is for export functionality only -->
        <script>
            $(document).ready(function() {

                @if (\Session::has('message'))
                    $.toast({
                        heading: 'Success!',
                        position: 'top-center',
                        text: '{{ session()->get('message') }}',
                        loaderBg: '#ff6849',
                        icon: 'success',
                        hideAfter: 3000,
                        stack: 6
                    });
                @endif
            })

            $(function() {
                $('#myTable').DataTable({
                    'aoColumnDefs': [{
                        'bSortable': false,
                        'aTargets': [-1] /* 1st one, start by the right */
                    }]
                });

            });
        </script>
    @endpush
