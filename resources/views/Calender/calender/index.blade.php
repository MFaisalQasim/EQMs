@extends('layouts.master_frontend')

<link rel="stylesheet" href="https://fullcalendar.io/js/fullcalendar-2.2.5/fullcalendar.css">

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
                    <a class="btn btn-success pull-right" href="{{ url('/calender/calender/create') }}"><i
                            class="icon-plus"></i> Add Calender</a>
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


    {{-- Scripts --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


    <script>
        $(document).ready(function() {
            var SITEURL = "{{ url('/') }}";
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            var calendar = $('#full_calendar_events').fullCalendar({
                editable: true,
                editable: true,
                events: SITEURL + "/calendar-event",
                displayEventTime: true,
                eventRender: function(event, element, view) {
                    if (event.allDay === 'true') {
                        event.allDay = true;
                    } else {
                        event.allDay = false;
                    }
                },
                selectable: true,
                selectHelper: true,
                select: function(event_start, event_end, allDay) {
                    var event_name = prompt('Event Name:');
                    if (event_name) {
                        var event_start = $.fullCalendar.formatDate(event_start, "Y-MM-DD HH:mm:ss");
                        var event_end = $.fullCalendar.formatDate(event_end, "Y-MM-DD HH:mm:ss");
                        $.ajax({
                            url: SITEURL + "/calendar-crud-ajax",
                            data: {
                                event_name: event_name,
                                event_start: event_start,
                                event_end: event_end,
                                type: 'create'
                            },
                            type: "POST",
                            success: function(data) {
                                displayMessage("Event created.");
                                calendar.fullCalendar('renderEvent', {
                                    id: data.id,
                                    title: event_name,
                                    start: event_start,
                                    end: event_end,
                                    allDay: allDay
                                }, true);
                                calendar.fullCalendar('unselect');
                            }
                        });
                    }
                },
                eventDrop: function(event, delta) {
                    var event_start = $.fullCalendar.formatDate(event.start, "Y-MM-DD");
                    var event_end = $.fullCalendar.formatDate(event.end, "Y-MM-DD");
                    $.ajax({
                        url: SITEURL + '/calendar-crud-ajax',
                        data: {
                            title: event.event_name,
                            start: event_start,
                            end: event_end,
                            id: event.id,
                            type: 'edit'
                        },
                        type: "POST",
                        success: function(response) {
                            displayMessage("Event updated");
                        }
                    });
                },
                eventClick: function(event) {
                    var eventDelete = confirm("Are you sure?");
                    if (eventDelete) {
                        $.ajax({
                            type: "POST",
                            url: SITEURL + '/calendar-crud-ajax',
                            data: {
                                id: event.id,
                                type: 'delete'
                            },
                            success: function(response) {
                                calendar.fullCalendar('removeEvents', event.id);
                                displayMessage("Event removed");
                            }
                        });
                    }
                }
            });
        });

        function displayMessage(message) {
            toastr.success(message, 'Event');
        }
    </script>
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
