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
                    <h3 class="box-title pull-left">Motivationalquotes</h3>
                    @can('add-' . str_slug('motivationalquotes'))
                        <a class="btn btn-success pull-right"
                            href="{{ url('/motivationalquotes/motivational-quotes/create') }}"><i class="icon-plus"></i> Add
                            Motivationalquotes</a>
                    @endcan
                    <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Back</a>
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-borderless" id="myTable">
                            <thead>
                                <tr>
                                    {{-- <th>#</th> --}}
                                    <th>Qoute</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($motivationalquotes as $item)
                                    <tr>
                                        {{-- <td>{{ $loop->iteration or $item->id }}</td> --}}
                                        <td>{{ $item->qoute }}</td>
                                        <td>
                                            @can('view-' . str_slug('motivationalquotes'))
                                                <a href="{{ url('/motivationalquotes/motivational-quotes/' . $item->id) }}"
                                                    title="View MotivationalQuote">
                                                    <button class="btn btn-info btn-sm">
                                                        <i class="fa fa-eye" aria-hidden="true"></i> View
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('edit-' . str_slug('motivationalquotes'))
                                                <a href="{{ url('/motivationalquotes/motivational-quotes/' . $item->id . '/edit') }}"
                                                    title="Edit MotivationalQuote">
                                                    <button class="btn btn-primary btn-sm">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"> </i> Edit
                                                    </button>
                                                </a>
                                            @endcan

                                            @can('delete-' . str_slug('motivationalquotes'))
                                                {!! Form::open([
    'method' => 'DELETE',
    'url' => ['/motivationalquotes/motivational-quotes', $item->id],
    'style' => 'display:inline',
]) !!}
                                                {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', [
    'type' => 'submit',
    'class' => 'btn btn-danger btn-sm',
    'title' => 'Delete MotivationalQuote',
    'onclick' => 'return confirm("Confirm delete?")',
]) !!}
                                            @endcan
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="pagination-wrapper"> {!! $motivationalquotes->appends(['search' => Request::get('search')])->render() !!} </div>
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
