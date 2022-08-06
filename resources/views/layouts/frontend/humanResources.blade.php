@extends('layouts.master_frontend')

@section('content')
    <section>
        <div class="row">
            <div class=" col-12 col-md-6 col-lg-9">
                <div class="row">
                    <div class="col-12 col-lg-4">
                        <div class="documents_div">
                            <h2 class="h2">Human Resources</h2>
                            <hr class="documents_hr_1">
                            <hr class="documents_hr_1 documents_hr_2">
                        </div>
                    </div>
                    <div class="col-12">
                        @if (auth()->user()->hasRole('User A') ||
                            auth()->user()->hasRole('UserC1') ||
                            auth()->user()->hasRole('Developer'))
                            <ul class="ul_nav__item buttons_ul">
                                <li class="nav__item"><a class="bar_text_large"
                                        href={{ url('/personalRecords/personal-records') }}>PersonalRecords</a>
                                </li>
                                <li class="nav__item"><a class="bar_text_large" href={{ url('/job-position') }}>Job
                                        Positions</a>
                                </li>
                                <li class="nav__item"><a class="bar_text_large" href={{ url('/vacation/vacation') }}>
                                        {{-- url training_calender --}}
                                        Vacation Planner</a></li>
                            </ul>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
