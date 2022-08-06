<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    protected $dontReport = [
        //
    ];

   
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

   
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }
    public function render($request, Throwable $exception)
    {
        return parent::render($request, $exception);
    }
    public function register()
{
    $this->reportable(function (Throwable $e) {
        if ($this->shouldReport($e) && app()->bound('sentry')) {
            app('sentry')->captureException($e);
        }
    });
}
}
