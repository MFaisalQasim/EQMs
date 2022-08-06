@extends('layouts.master_frontend')


{{-- @push('css')
    <link href="{{ asset('plugins/components/datatables/jquery.dataTables.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
@endpush --}}

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">

                    <div class="row">
                        <div class="documents_div mt-0 mb-1">
                            <h2 class="h2">Personalrecords</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                        <div class="col d_flex_center_end">
                            
                        @can('add-' . str_slug('personalrecords'))
                            <a class="btn btn-success pull-right" href="{{ url('/personalrecords/personalrecords/create') }}"><i
                                    class="icon-plus"></i> Add New Employee
                                </a>
                        @endcan
                        @can('edit-' . str_slug('personalrecords'))
                            <a class="btn btn-success pull-right" id="updateAllSelecedRecord"
                                href="{{ url('/personalrecords/personalrecords/') }}"><i class="icon-plus"></i> update</a>
                        @endcan
                            <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Back</a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-borderless" id="myTable">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="chkCheckAll"></th>
                                    <th>Name</th>
                                    <th>position</th>
                                    <th>details</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($personalrecords as $item)
                                    <tr>
                                        <th><input type="checkbox" name="ids" class="checkBoxClass"
                                                value={{ $item->id }}></th>            
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->position }}</td>
                                                <td>{{ $item->details }}</td>
                                        <td>
                                
                                            @can('view-' . str_slug('personalrecords'))
                                                <a href="{{ url('/personalrecords/personalrecords/' . $item->id) }}" title="View personalrecords">
                                                    <button class="btn btn-info btn-sm">
                                                        <i class="fa fa-eye" aria-hidden="true"></i> View
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('edit-' . str_slug('personalrecords'))
                                                <a href="{{ url('/personalrecords/personalrecords/' . $item->id . '/edit') }}"
                                                    title="Edit personalrecords">
                                                    <button class="btn btn-primary btn-sm">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"> </i> Edit
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('delete-' . str_slug('personalrecords'))
                                                {!! Form::open([
                                                    'method' => 'DELETE',
                                                    'url' => ['/personalrecords/personalrecords', $item->id],
                                                    'style' => 'display:inline',
                                                ]) !!}
                                                {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', [
                                                    'type' => 'submit',
                                                    'class' => 'btn btn-danger btn-sm',
                                                    'title' => 'Delete personalrecords',
                                                    'onclick' => 'return confirm("Confirm delete?")',
                                                ]) !!}
                                            @endcan
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="pagination-wrapper"> {!! $personalrecords->appends(['search' => Request::get('search')])->render() !!} </div>
                    </div>

                </div>
                
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="{{ asset('plugins/components/toast-master/js/jquery.toast.js') }}"></script>

    {{-- <script src="{{ asset('plugins/components/datatables/jquery.dataTables.min.js') }}"></script> --}}
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
