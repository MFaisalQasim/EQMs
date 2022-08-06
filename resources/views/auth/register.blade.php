<!DOCTYPE html>
<html lang="en">

<head>
    <title>Register | </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    {{-- <link rel="icon" href="{{ asset('assets/images/favicon.png') }}" /> --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100"
        rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/global/css/swiper.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/global/css/style.css') }}" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>

<body class="pg11-body">


    {{-- <section id="wrapper" class="login-register"> --}}
    <div class="container-flex">

        <div class="site-header__middle d-flex">
            <div class="bar">
                <a href="#" class="brand bar_text_large">EQMS</a>
            </div>
        </div>
    </div>
    <section class="login-section">
        <div class="white-box">
            <form class="form-horizontal form-material" id="loginform" method="POST"
                action="{{ route('register') }}">
                {{ csrf_field() }}
                @csrf
                <div class="container login-form-container">
                    <div class="row">
                        <div class="col">
                            <div class="input-group mb-3 my-group-field">
                                <h1>Register Your Account</h1>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr class="hr">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="input-group mb-3 my-group-field">
                                <input id="name" type="text"
                                    class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                    placeholder="Name" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="input-group mb-3 my-group-field">
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group mb-3 my-group-field">
                                            <input id="email" type="email"
                                                class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                                name="email" placeholder="Email" value="{{ old('email') }}"
                                                required>

                                            @if ($errors->has('email'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group mb-3 my-group-field">
                                            <input id="password" type="password"
                                                class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                                placeholder="Password" name="password" required>

                                            @if ($errors->has('password'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('password') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <input id="password-confirm" type="password" class="form-control"
                                            name="password_confirmation" placeholder="Confirm Password" required>
                                    </div>
                                </div>
                                <div class="custom-control custom-checkbox custom_checkbox_div">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">I agree with terms and
                                        conditions</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <button class="btn login-btn sign-btn" type="submit">Register
                            </button>
                            {{-- <button type="submit" class="btn login-btn">Login</button> --}}
                        </div>
                    </div>
                </div>
                <div class="form-group m-b-0">
                    <div class="col-sm-12 text-center Sign_Up">
                        <p>Already have an account? <a href="{{ url('login') }}" class=" m-l-5"><b>Log In</b></a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>

    <script src="{{ asset('assets/global/js/swiper.min.js') }}"></script>
    <script src="{{ asset('assets/global/js/custom.js') }}"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init();
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
    </script>
</body>

</html>
