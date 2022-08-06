@extends('layouts.master_frontend')

{{-- @push('css')
    <link href="{{asset('plugins/components/datatables/jquery.dataTables.min.css')}}" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet"
          type="text/css"/>
@endpush --}}

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="documents_div mt-0 mb-1">
                        <h2 class="h2">Documents</h2>
                        <hr class="documents_hr_1">
                        <hr class="documents_hr_1 documents_hr_2">
                    </div>
                    <div class="col d_flex_center_end">
                        @can('add-' . str_slug('documents'))
                            <a class="btn pull-right" href="{{ url('/Documents/documents/create') }}"><img
                                    src="{{ asset('website/images/add_btn.png') }}" alt=""></a>
                        @endcan
                        <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Back</a>
                    </div>
                </div>
                <div class="clearfix"></div>
                <hr>
                <div class="table-responsive">
                    <table class="table table-borderless" id="myTable">
                        <thead>
                            <tr>
                                {{-- <th>#</th> --}}
                                <th>Name</th>
                                <th>Version</th>
                                <th>Created_at</th>
                                <th>Updated_at</th>
                                {{-- <th>File</th> --}}
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{-- @dd($documents) --}}
                            @foreach ($documents as $item)
                                {{-- @dd($item) --}}
                                <tr>
                                    {{-- <td>{{ $loop->iteration }}</td> --}}
                                    <td>{{ $item->name }}</td>
                                    {{-- <td>{{ $item->version }}</td> --}}
                                    <td>{{ count($documentFile) }}</td>
                                    <td>{{ date_format($item->created_at, 'Y/m/d') }}</td>
                                    <td>{{ date_format($item->updated_at, 'Y/m/d') }}</td>
                                    <td>
                                        @can('view-' . str_slug('documents'))
                                            <a href="{{ url('/Documents/documents/' . $item->id) }}" title="View Document">
                                                <button class="btn btn-sm">
                                                    <img src="{{ asset('website/images/ADD.png') }}" alt="">
                                                </button>
                                            </a>
                                        @endcan

                                        @can('edit-' . str_slug('documents'))
                                            <a href="{{ url('/Documents/documents/' . $item->id . '/edit') }}"
                                                title="Edit Document">
                                                <button class="btn btn-sm">
                                                    <img src="{{ asset('website/images/Edit_icon.png') }}" alt="">
                                                </button>
                                            </a>
                                        @endcan

                                        @can('delete-' . str_slug('documents'))
                                            {!! Form::open([
    'method' => 'DELETE',
    'url' => ['/Documents/documents', $item->id],
    'style' => 'display:inline',
]) !!}
                                            {!! Form::button(' <img src="../website/images/delete_icon.png" Delete', [
    'type' => 'submit',
    'class' => 'btn btn-sm',
    'title' => 'Delete Document',
    'onclick' => 'return confirm("Confirm delete?")',
]) !!}
                                        @endcan
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="pagination-wrapper"> {!! $documents->appends(['search' => Request::get('search')])->render() !!} </div>
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
