<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login | </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    {{-- <link rel="icon" href="{{ asset('assets/images/favicon.png') }}" /> --}}
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
    @csrf
</head>

<body class="pg11-body">
    <div class="container-flex">

        <div class="site-header__middle d-flex">
            <div class="bar">
                <a href="#" class="brand bar_text_large">EQMS</a>
            </div>
        </div>
    </div>
    <section class="login-section">
        <form class="form-horizontal form-materia" id="loginform" method="post" action="{{ route('login') }}">
            {{ csrf_field() }}
            @csrf
            <div class="container login-form-container">
                <div class="row">
                    <div class="col">
                        <h1>Login Your Account</h1>
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
                            <input id="email" placeholder="Username or E-mail" aria-label="Username"
                                aria-describedby="basic-addon1"
                                class=" my-form-control form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                name="email" value="{{ old('email') }}" required autofocus>
                            @if ($errors->has('email'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                            {{-- <input type="text" class="form-control my-form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" /> --}}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="input-group mb-3 my-group-field">
                            <input id="password" type="password" placeholder="Password" aria-label="Username"
                                aria-describedby="basic-addon1"
                                class="my-form-control form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                name="password" required placeholder="Password">
                            @if ($errors->has('password'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                            @endif
                            {{-- <input type="text" class="form-control my-form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1" /> --}}
                        </div>
                    </div>
                </div>
                <div class="custom-control custom-checkbox custom_checkbox_div">
                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                    <label class="custom-control-label flex_around" for="customCheck1"><span>I Keep me signed in
                        </span> <span>Forgot your password?</span></label>
                </div>

                {{-- <div class="row">
          <div class="col">
            <h5 class="lost-password-txt">Lost password?</h5>
          </div>
        </div> --}}
                <div class="row">
                    <div class="col mb-2 d_space_between">
                        <button class="btn login-btn login-btn-light" type="submit"> Login
                        </button>
                        {{-- <a class="btn login-btn pt-3" href="/register"> Register
                        </a> --}}
                        {{-- <button type="submit" class="btn login-btn">Login</button> --}}
                    </div>
                </div>
            </div>
            {{-- <div class="form-group m-b-0">
                <div class="col-sm-12 text-center">
                    <p>Don't have an account? <a href="{{ url('register') }}" class="text-primary m-l-5"><b>Sign
                                Up</b></a></p>
                </div>
            </div> --}}
        </form>
    </section>

</body>

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

</html>
