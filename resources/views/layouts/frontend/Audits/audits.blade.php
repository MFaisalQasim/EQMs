@extends('layouts.master_frontend')

@section('content')
    <section>
        {{-- <div class="row">
            <div class=" col-12 col-md-6 col-lg-9"> --}}
        <div class="row">
            <div class="col-12 col-lg-4">
                <div class="documents_div">
                    <h2 class="h2">Procedures</h2>
                    <hr class="documents_hr_1">
                    <hr class="documents_hr_1 documents_hr_2">
                </div>
            </div>
            <div class="col-12">
                <ul class="ul_nav__item buttons_ul">
                    @if (auth()->user()->hasRole('User A') ||
                        auth()->user()->hasRole('UserC1') ||
                        auth()->user()->hasRole('UserC2') ||
                        auth()->user()->hasRole('Developer'))
                        {{-- <li class="nav__item"><a class="bar_text_large"
                                href={{ url('/health-and-safety-inspection/health-and-safety-inspection') }}>HealthAndSafetyInspection</a>
                        </li>
                        <li class="nav__item"><a class="bar_text_large" href={{ url('incident/incident') }}>Add
                                Incident</a>
                        </li>
                        <li class="nav__item"><a class="bar_text_large"
                                href={{ url('management-review/management-review') }}>ManagementReview</a>
                        </li> --}}
                        <li class="nav__item"><a class="bar_text_large" href={{ url('new-audits') }}>New Audits</a>
                        </li>
                        <li class="nav__item"><a class="bar_text_large" href={{ url('past-audits') }}>Past Audits</a>
                        </li>
                        <li class="nav__item"><a class="bar_text_large" href={{ url('pending-audits') }}>Previous
                                Audits</a>
                        </li>
                        {{-- <li class="nav__item"><a class="bar_text_large" href={{ url('audits/audits') }}>Internal Audits</a>
                        </li> --}}
                        <li class="nav__item"><a class="bar_text_large" href={{ url('external-audit') }}>External Audit</a>
                        </li>

                        {{-- <li class="nav__item"><a class="bar_text_large"
                            href={{ url('emergency-response-exercise/emergency-response-exercise') }}>EmergencyResponseExercise</a>
                    </li> --}}
                    @elseif (auth()->user()->hasRole('UserC2'))
                        <li class="nav__item"><a class="bar_text_large" href={{ url('audits/audits') }}>Internal Audits</a>
                        </li>
                        <li class="nav__item"><a class="bar_text_large" href={{ url('external-audit') }}>External Audit</a>
                        </li>
                        {{-- <li class="nav__item"><a class="bar_text_large"
                                href={{ url('emergency-response-exercise/emergency-response-exercise') }}>EmergencyResponseExercise</a>
                        </li> --}}
                </ul>
                @endif
            </div>
        </div>
    </section>
@endsection
