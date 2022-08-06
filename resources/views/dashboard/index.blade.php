{{-- @extends('layouts.master') --}}
@extends('layouts.master_frontend')

@push('css')
    <style>
        .info-box .info-count {
            margin-top: 0px !important;
        }
    </style>
@endpush

@section('content')
    {{-- @if (auth()->user()->hasRole('User A'))
        @forelse($notifications as $notification)
            <div class="alert alert-success" role="alert">
                [{{ $notification->created_at }}] User {{ $notification->data['name'] }}
                ({{ $notification->data['email'] }}) has just registered.
                <a href="#" class="float-right mark-as-read" data-id="{{ $notification->id }}">
                    Mark as read
                </a>
            </div>

            @if ($loop->last)
                <a href="#" id="mark-all">
                    Mark all as read
                </a>
            @endif
        @empty
            There are no new notifications
        @endforelse
    @endif
    @if (auth()->user()->hasRole('User A'))
        <script>
            function sendMarkRequest(id = null) {
                return $.ajax("{{ route('admin.markNotification') }}", {
                    method: 'POST',
                    data: {
                        _token,
                        id
                    }
                });
            }
            $(function() {
                $('.mark-as-read').click(function() {
                    let request = sendMarkRequest($(this).data('id'));
                    request.done(() => {
                        $(this).parents('div.alert').remove();
                    });
                });
                $('#mark-all').click(function() {
                    let request = sendMarkRequest();
                    request.done(() => {
                        $('div.alert').remove();
                    })
                });
            });
        </script>
    @endif --}}
    @if (auth()->user()->hasRole('User A') ||
        auth()->user()->hasRole('User B') ||
        auth()->user()->hasRole('UserC1') ||
        auth()->user()->hasRole('UserC2') ||
        auth()->user()->hasRole('Developer'))
        <section>
            <div class="row">
                <div class=" col-12 col-md-12 col-lg-9">
                    <div class="row">
                        <div class="col-12">
                            <ul class="ul_nav__item buttons_ul">
                                <li class="nav__item"><a class="bar_text_large" href={{ url('/vacation/vacation') }}>Request
                                        Vacation</a></li>
                                <li class="nav__item"><a class="bar_text_large" href="incident/incident">Add Incident</a>
                                </li>
                                @if (auth()->user()->hasRole('User A') ||
                                    auth()->user()->hasRole('UserC1') ||
                                    auth()->user()->hasRole('UserC2') ||
                                    auth()->user()->hasRole('Developer'))
                                    <li class="nav__item"><a class="bar_text_large" {{-- href="training_calender" --}}
                                            href="add_training/add-training">Add
                                            Training</a></li>
                                @endif
                            </ul>
                        </div>
                        <div class="col-12 col-md-12 col-lg-12  col-xl-8 mb-4">
                            <div class="row d_flex_center">
                                <div class="men_jogging">
                                    @if ($motivationalquotes->image == null)
                                        {{-- <img class=" img-fluid"
                                            src="{{ asset('website/images/c1_dashboard_img.png') }}" alt=""> --}}
                                        <div class="documents_div">
                                            <h2 class="h2"> {{ $motivationalquotes->qoute }}</h2>
                                            <hr class="documents_hr_1">
                                            <hr class="documents_hr_1 documents_hr_2">
                                        </div>
                                    @else
                                        <img class=" img-fluid" src="{{ $motivationalquotes->image }}" alt="">
                                    @endif

                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-12 col-lg-12 col-xl-4 mb-4">
                            <div class="d_grid_center  row w-100">
                                <div class="col-8 col-xl-12">
                                    <div class="documents_div">
                                        <h2 class="h2">Documents</h2>
                                        <hr class="documents_hr_1">
                                        <hr class="documents_hr_1 documents_hr_2">
                                    </div>
                                    @foreach ($documents as $item)
                                        <div class="form-group documents_sub_div">
                                            <h5>{{ $item->name }}</h5>
                                        </div>
                                    @endforeach
                                    <div class="button_view">
                                        <a class="a" href="{{ url('Documents/documents') }}">View all</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" col-12 col-md-12 col-lg-3 mb-4">
                    <div class="viewed">
                        <div class="viewed_heading_div ">
                            <div class="announcements_div">
                                <h2 class="h2">Announcements</h2>
                                <hr class="documents_hr_1">
                                <hr class="documents_hr_1 documents_hr_2">
                            </div>
                        </div>
                        <div class="container_div ">
                            @foreach ($announcement as $item)
                                <div class="post-slide10">
                                    <h3 class="post-title">
                                        <a href="#"> {{ $item->name }}</a>
                                    </h3>
                                    <div class="d_flex_space_between">
                                        <a href="#" class="read-more "> <img class="Clock_icon"
                                                src="{{ asset('website/images/Clock.png') }}"
                                                alt="">{{ date_format($item->created_at, 'H:i') }}</a>

                                        <a href="#"
                                            class="read-more">{{ date_format($item->created_at, 'Y/m/d') }}</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </section>
    @else
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-12">
                    <h1 align="center">Welcome to Dashboard</h1>
                </div>
            </div>
        </div>
    @endif

@endsection

@push('js')
    <script src="{{ asset('js/db1.js') }}"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js">
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#news-slider").owlCarousel({
                items: 4,
                itemsDesktop: [1199, 2],
                itemsMobile: [600, 1],
                pagination: true,
                autoPlay: true
            });

            $("#news-slider10").owlCarousel({
                items: 6,
                itemsDesktop: [1199, 3],
                itemsDesktopSmall: [980, 2],
                itemsMobile: [600, 1],
                navigation: true,
                navigationText: ["", ""],
                pagination: true,
                autoPlay: true
            });
        });
    </script>
@endpush
