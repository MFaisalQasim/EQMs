@extends('layouts.master')

@push('css')
    <link href="{{ asset('plugins/components/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
@endpush

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Users List</h3>
                    <a class="btn btn-success pull-right" href="{{ url('user/create') }}"><i class="icon-plus"></i> Add
                        user</a>
                    <a class="btn btn-success pull-right ml-3" href="{{ url('/') }}"> Home</a>
                    <div class="clearfix"></div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                            <th>Role</th>
                                            <th>Managed_by</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    {{-- {{ $_SERVER['HTTP_HOST'] != '/userb' }} --}}
                                    <tbody>

                                        @if (Auth::User()->name == 'User A')
                                            @foreach ($users as $key => $user)
                                                {{-- @if ($user->Managed_by == 'User B' && (Auth::user()->name = $user->name)) --}}
                                                    <tr>
                                                        <td>{{ $key + 1 }}</td>
                                                        <td>{{ $user->name }}</td>
                                                        <td>{{ $user->roles()->pluck('name')->implode(', ') }}</td>
                                                        <td>{{ $user->Managed_by }}</td>
                                                        <th>
                                                            <a class="btn btn-info btn-sm"
                                                                href="{{ url('user/edit/' . $user->id) }}"><i
                                                                    class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                                Edit</a>
                                                            &nbsp;&nbsp;
                                                            <a class="delete btn btn-danger btn-sm"
                                                                href="{{ url('user/delete/' . $user->id) }}"><i
                                                                    class="fa fa-trash-o"></i> Delete</a>
                                                        </th>
                                                    </tr>
                                                {{-- @endif --}}
                                            @endforeach
                                        @endif


                                    </tbody>
                                    {{-- @if ($_SERVER['HTTP_HOST'] != '-positions/job-positions')
                            {
                            {{ $is_subdomain = true }}
                            }
                            @if (isset($is_subdomain) && substr($_SERVER['HTTP_HOST'], 0, 24) == 'http://127.0.0.1:8000/job')
                                {
                                <h1>yes</h1>
                                }
                            @else
                                {
                                <h1>no</h1>
                                }
                                @if (url('job-positions/job-positions') == 'job-positions/job-positions')
                                    <a class="btn pull-right" href="{{ url('/personalRecords/personal-records/create') }}"><img
                                            src="{{ asset('website/images/add_btn.png') }}" alt=""></a>
                                @endif
                            @endif
                        @endif --}}
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
    <script src="{{ asset('plugins/components/toast-master/js/jquery.toast.js') }}"></script>
    <script src="{{ asset('plugins/components/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script>
        $(document).ready(function() {
            $(document).on('click', '.delete', function(e) {
                if (confirm('Are you sure want to delete?')) {} else {
                    return false;
                }
            });
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
                "columns": [
                    null, null, null, {
                        "orderable": false
                    }
                ]
            });

        });
    </script>
@endpush
