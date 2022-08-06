@extends('layouts.master_frontend')
{{-- @include('https://unpkg.com/@popperjs/core@2
') --}}
@push('css')
    <link href="{{ asset('plugins/components/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />



    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css" /> --}}

    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>/
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/js/bootstrap.min.js">
    </script>

    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.min.js"></script> --}}
@endpush


@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Vacation</h3>

                    <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Back</a>
                    @can('add-' . str_slug('Vacation'))
                        <a class="btn btn-success pull-right" href="{{ url('/vacation/vacation/create') }}"><i
                                class="icon-plus"></i> Add Vacation</a>
                    @endcan
                    @can('edit-' . str_slug('Vacation'))
                        <a class="btn btn-success pull-right" id="updateAllSelecedRecord"
                            href="{{ url('/vacation/vacation/') }}"><i class="icon-plus"></i> update</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>

                    <div class="table-responsive">
                        <table class="table table-borderless" id="myTable">
                            <thead>
                                <tr>
                                    {{-- <th>#</th> --}}
                                    <th><input type="checkbox" id="chkCheckAll"></th>
                                    <th>Name</th>
                                    <th>Approval</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>Actions</th>
                                    {{-- <script type="text/javascript">
                                        $(document).ready(function() {
                                            $('#example-dropUp').multiselect({
                                                enableFiltering: true,
                                                includeSelectAllOption: true,
                                                maxHeight: 400,
                                                dropDown: true
                                            });
                                        });
                                    </script> --}}
                                    {{-- <th>
                                        <form action="">
                                            <select id="example-dropUp" multiple="multiple">
                                                @foreach ($vacation as $item)
                                                    <option value={{ $item->id }}>{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            <button type="submit">Update</button>
                                        </form>
                                    </th> --}}

                                    {{-- <th> --}}

                                    {{-- </th> --}}


                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($vacation as $item)
                                    <tr>
                                        {{-- <td>{{ $loop->iteration or $item->id }}</td> --}}
                                        <th><input type="checkbox" name="ids" class="checkBoxClass"
                                                value={{ $item->id }}></th>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->approval }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item->start_date)) }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item->end_date)) }}</td>
                                        <td>
                                            @can('view-' . str_slug('Vacation'))
                                                <a href="{{ url('/vacation/vacation/' . $item->id) }}" title="View Vacation">
                                                    <button class="btn btn-info btn-sm">
                                                        <i class="fa fa-eye" aria-hidden="true"></i> View
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('edit-' . str_slug('Vacation'))
                                                <a href="{{ url('/vacation/vacation/' . $item->id . '/edit') }}"
                                                    title="Edit Vacation">
                                                    <button class="btn btn-primary btn-sm">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"> </i> Edit
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('delete-' . str_slug('Vacation'))
                                                {!! Form::open([
                                                    'method' => 'DELETE',
                                                    'url' => ['/vacation/vacation', $item->id],
                                                    'style' => 'display:inline',
                                                ]) !!}
                                                {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', [
                                                    'type' => 'submit',
                                                    'class' => 'btn btn-danger btn-sm',
                                                    'title' => 'Delete Vacation',
                                                    'onclick' => 'return confirm("Confirm delete?")',
                                                ]) !!}
                                            @endcan
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="pagination-wrapper"> {!! $vacation->appends(['search' => Request::get('search')])->render() !!} </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection



@push('js')
    <script src="{{ asset('plugins/components/toast-master/js/jquery.toast.js') }}"></script>



    <script src="{{ asset('plugins/components/datatables/jquery.dataTables.min.js') }}"></script>
    <!-- start - This is for export functionality only -->
    <!-- end - This is for export functionality only -->

    <script>
        $(function(e) {
            $('#chkCheckAll').click(function() {
                $('.checkBoxClass').prop('checked', $(this).prop('checked'));
            })
            $('updateAllSelecedRecord').click(function(e) {
                e.preventDefault();
                var allids = [];

                $("input:checkbox[name=ids]:checked").each(function() {
                    allids.push($(this).val());
                })

                $.ajax({
                    url: "",
                    type: "EDIT"
                    data: {
                        _tocken: $("input[name=_tocken]").val(),
                        ids: allids
                    },
                })

            })
        })
    </script>

    {{-- <script>
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
    </script> --}}
@endpush
