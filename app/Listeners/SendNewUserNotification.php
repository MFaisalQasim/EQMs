<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\User;
use App\Notification;
use App\Notifications\NewUserNotification;
use Auth;

class SendNewUserNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $admins = User::get();
        // $admins = User::whereHas('roles', function ($query) {
        //         $query->where('role_id', 1);
        //     })->get();

        Notification::send($admins, new NewUserNotification($event->user));
    }
}
