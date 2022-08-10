<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>EQMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="{{ asset('website/css/reset.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('website/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('website/css/header.css') }}" />

    {{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> --}}
    {{-- <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-iconpicker/1.9.0/css/bootstrap-iconpicker.min.css" /> --}}
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script> --}}
    <link href="{{ asset('bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">

    @if (session()->get('theme-layout') == 'fix-header')
        <link href="{{ asset('css/style-fix-header.css') }}" rel="stylesheet">
        <link href="{{ asset('css/colors/default.css') }}" id="theme" rel="stylesheet">
    @elseif(session()->get('theme-layout') == 'mini-sidebar')
        <link href="{{ asset('css/style-mini-sidebar.css') }}" rel="stylesheet">
        <link href="{{ asset('css/colors/default.css') }}" id="theme" rel="stylesheet">
    @else
        <link href="{{ asset('css/style-normal.css') }}" rel="stylesheet">
    @endif
    @stack('css')
</head>

<body>
    <!-- Header Start -->
    <header class="site-header">
        <div class="site-header__top">
            <div class="wrapper site-header__wrapper p-1">
                <div class="site-header__start">
                    <ul class="">
                        <li class=""><a href="#">About</a></li>
                        <li class=""><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="d-flex header_bar">
                    <div class="">
                        <img class="img-fluid company-icon" src="{{ asset('website/images/COBE-Logo1.png') }}"
                            alt="">
                    </div>
                    <div class="bar">
                        <a href="/" class="brand bar_text_large">EQMS</a>
                    </div>
                </div>
                <div class="site-header__end d-flex">
                    <nav class="navbar navbar-dark navbar-expand-sm mt-2">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbar-list-4" aria-controls="navbarNav" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"> </span>
                        </button>
                        @if (Auth::check())
                            <div class="collapse navbar-collapse" id="navbar-list-4">
                                <ul class="navbar-nav">
                                    <li class="nav-item dropdown d-flex mt-4">
                                        <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img class="img-fluid alert_icon"
                                                src="{{ asset('website/images/alert_icon.png') }}" alt="">
                                        </a>
                                        {{-- <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                            @if (auth()->user()->hasRole('User B') ||
    auth()->user()->hasRole('UserC1') ||
    auth()->user()->hasRole('UserC2'))
                                                @foreach ($notification as $item)
                                                    @if (Auth::user()->name == $item->reciver_name)
                                                        <div class="p-2 notification_border">
                                                            <div class="d_flex_space_between">
                                                                <h6 class="post-title mr-4">
                                                                    <a >
                                                                        {{ $item->notifications_title }}</a>
                                                                </h6>
                                                                <h6 class="post-title">
                                                                    <a href="#">
                                                                        {{ $item->reporter_name }}</a>
                                                                </h6>
                                                            </div>
                                                            <div class="d_flex_space_between">
                                                                <a href="#" class="read-more "> <img
                                                                        class="Clock_icon"
                                                                        src="{{ asset('website/images/Clock.png') }}"
                                                                        alt="">{{ date_format($item->created_at, 'H:i') }}</a>
                                                                <a href="#"
                                                                    class="read-more">{{ date_format($item->created_at, 'Y/m/d') }}</a>
                                                            </div>
                                                        </div>
                                                    @else
                                                    @endif
                                                @endforeach
                                            @else
                                                <h1>Nothing TO Show</h1>
                                            @endif
                                        </div> --}}
                                    </li>
                                </ul>
                            </div>
                        @endif
                    </nav>
                    <nav class="navbar navbar-dark navbar-expand-sm mt-2">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbar-list-4" aria-controls="navbarNav" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        {{-- @if (Auth::check()) --}}
                        <div class="collapse navbar-collapse" id="navbar-list-4">
                            <ul class="navbar-nav">
                                <div class="d_flex_center"><img src="{{ asset('website/images/profile_icon.png') }}"
                                        alt="">
                                </div>
                                <div class="profile_name d_flex_center p-1 w-50">
                                    {{ auth()->user()->name }}
                                    {{-- <br> --}}
                                </div>
                                <li class="nav-item dropdown d-flex mt-4">
                                    <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <img src="{{ asset('website/images/dropdown_arrow.png') }}" alt="">
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="/logout" route="{{ route('logout') }}">Log
                                            Out</a>
                                        <a class="dropdown-item" href="/account-settings">Account Settings</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        {{-- @endif --}}
                    </nav>
                </div>
            </div>
        </div>
        <div class="site-header__bottom custom_container">
            <div class="wrapper site-header__wrapper p-0">
                <div class="site-header__start">
                    <nav class="nav">
                        <button class="nav__toggle menu_btn" aria-expanded="false" type="button">
                            menu
                        </button>
                        <ul class="nav__wrapper">

                            <li class=" ">
                                <a class="bar_text_large nav__item nav__item_border" href="{{ url('/') }}">
                                    <img src="{{ asset('website/images/dashboard_logo.png') }}"
                                        alt="">Dashboard</a>
                            </li>
                            @foreach ($laravelAdminMenus->menus as $section)
                                @if (count(collect($section->items)) > 0)
                                    @foreach ($section->items as $menu)
                                        @can('view-' . str_slug($menu->title))
                                            <li>
                                                @if (isset($menu->dropDown))
                                                    <a class="bar_text_large nav__item nav__item_border"
                                                        href="javascript::void(0)" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">
                                                        <i class="glyphicon {{ $menu->icon }} fa-fw"></i>
                                                        <span class="hide-menu"> {{ $menu->title }}</span>
                                                    </a>
                                                @else
                                                    <a class="bar_text_large nav__item nav__item_border"
                                                        href="{{ url($menu->url) }} ">
                                                        <i class="glyphicon {{ $menu->icon }} fa-fw"></i>
                                                        <span class="hide-menu"> {{ $menu->title }}</span>
                                                    </a>
                                                @endif

                                                @if (isset($menu->dropDown))
                                                    <ul class="collapse" aria-expanded="true">
                                                        @foreach ($menu->dropDown as $dropDownMenu)
                                                            <li aria-labelledby="dropdownMenuButton_{{ $menu->title }}">
                                                                <a href="{{ url($dropDownMenu->url) }}">
                                                                    {{ $dropDownMenu->title }} </a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                            </li>
                                        @endcan
                                    @endforeach
                                @endif
                            @endforeach
                            @if (Auth::check())
                                @if (auth()->user()->hasRole('User A') ||
                                    auth()->user()->hasRole('User B') ||
                                    auth()->user()->hasRole('UserC1') ||
                                    auth()->user()->hasRole('Developer'))
                                    <li class=" "><a class="bar_text_large nav__item nav__item_border"
                                            href="{{ url('/procedures') }}"><img
                                                src="{{ asset('website/images/Procedures.png') }}"
                                                alt="">Procedures</a>
                                    </li>
                                    <li class=" "><a class="bar_text_large nav__item nav__item_border"
                                            href="{{ url('/human_resources') }}"><img
                                                src="{{ asset('website/images/Human Resources.png') }}"
                                                alt="">Human
                                            Resources</a>
                                    </li>
                                    <li class=" "><a class="bar_text_large nav__item nav__item_border"
                                            href="{{ url('/crm') }}"><img
                                                src="{{ asset('website/images/CRM.png') }}" alt="">CRM</a>
                                    </li>
                                @elseif (auth()->user()->hasRole('UserC2'))
                                    <li class=" "><a class="bar_text_large nav__item nav__item_border"
                                            href="{{ url('/procedures') }}"><img
                                                src="{{ asset('website/images/Procedures.png') }}"
                                                alt="">Procedures</a>
                                    </li>
                                @endif
                            @endif
                        </ul>
                    </nav>

                    <script>
                        $('.nav__wrapper a').on('click', function() {
                            $('.nav__wrapper').find('li.active').removeClass('active');
                            $(this).parent('li').addClass('active');
                        });
                    </script>
                </div>


                <div class="site-header__end">
                    <div class="topnav search_icon_div d-flex search_box">
                        <p class="m-0"><input type="text" placeholder="Search here"></p>
                        <img src="{{ asset('website/images/search_icon.png') }}" alt="">
                    </div>
                    @if (auth()->user()->hasRole('User B') ||
                        auth()->user()->hasRole('UserC1'))
                        <div class="d_flex_center m-4">
                            <a href="{{ asset('user/create') }}">Add New User</a>
                        </div>
                    @elseif (auth()->user()->hasRole('User A'))
                        <div class="d_grid_center m-4">
                            <a href="{{ asset('users') }}">Manage Users</a><br>
                        </div>
                    @endif
                </div>
                <!-- <a href="#">عربي</a> -->
                {{-- <a class="small_text" href="#"><span class="small_text_purple">Dashboard</span>
                        <b>/</b>Home</a> --}}
            </div>
        </div>
        </div>
    </header>
    <!-- Header End -->


    <!-- sidebar  -->
    {{-- @include('layouts.partials.sidebar') --}}





    <div class="custom_container">

        @yield('content')
    </div>
    {{-- <script src="js/header-10.js"></script> --}}

    <script src="{{ asset('website/js/header-10.js') }}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
    @stack('js')
</body>

@yield('externalJsLinks')
@yield('pageCustomJS')

</html>
