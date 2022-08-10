@extends('layouts.master_frontend')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-12 col-lg-4">
                    <div class="documents_div">
                        <h2 class="h2">Training Calender</h2>
                        <hr class="documents_hr_1">
                        <hr class="documents_hr_1 documents_hr_2">
                    </div>
                </div>
                @can('add-' . str_slug('Calender'))
                    <a class="btn btn-success pull-right" href="{{ url('/calender/calender/create') }}"><i class="icon-plus"></i>
                        Add Calender</a>
                @endcan
            </div>
            <div class="col-12">


                <div class="container mt-5" style="max-width: 700px">
                    <div id='full_calendar_events'></div>
                </div>
            </div>
        </div>
    </div>

    {{-- @foreach ($calender as $events)
        <tr>
            <td>{{ $loop->iteration or $events->id }}</td>
            <td>{{ $events->title }}</td>
            <td>{{ $events->start }}</td>
            <td>{{ $events->end }}</td>
            <td>
                @can('view-' . str_slug('Calender'))
                    <a href="{{ url('/calender/calender/' . $events->id) }}" title="View Calender">
                        <button class="btn btn-info btn-sm">
                            <i class="fa fa-eye" aria-hidden="true"></i> View
                        </button>
                    </a>
                @endcan

                @can('edit-' . str_slug('Calender'))
                    <a href="{{ url('/calender/calender/' . $events->id . '/edit') }}" title="Edit Calender">
                        <button class="btn btn-primary btn-sm">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"> </i> Edit
                        </button>
                    </a>
                @endcan

                @can('delete-' . str_slug('Calender'))
                    {!! Form::open([
    'method' => 'DELETE',
    'url' => ['/calender/calender', $events->id],
    'style' => 'display:inline',
]) !!}
                    {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', [
    'type' => 'submit',
    'class' => 'btn btn-danger btn-sm',
    'title' => 'Delete Calender',
    'onclick' => 'return confirm("Confirm delete?")',
]) !!}
                @endcan
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach --}}
@endsection






@push('js')
    <script src="{{ asset('plugins/components/toast-master/js/jquery.toast.js') }}"></script>

    <script src="{{ asset('plugins/components/datatables/jquery.dataTables.min.js') }}"></script>
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
