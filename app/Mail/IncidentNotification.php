<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use User;
use Auth;
use App\Incident;
use App\Notification;

class IncidentNotification extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
       $notificationAlert = Notification::get();
    //    dd(
    //     $notificationAlert->reporter_name . "    reporter_name",
    //     $notificationAlert->reciver_name . "    reciver_name",
    // );

       foreach ($notificationAlert as $item)
        //   dd(Auth::User()->email . 'Auth User');
          { 
           if ($item->due_date == date('Y-m-d') && $item->due_date != null && $item->reciver_name == Auth::user()->name)
            {   
                return $this
                ->from('mfaisalqasimtesting123@gmail.com')
                ->to(Auth::User()->email)
                ->subject('your IncidentNotification for due_date is send')
                ->view('emails.IncidentNotification');
                // return dd('your IncidentNotification for due_date is send');
           }
           elseif($item->remainder == date('Y-m-d') && $item->remainder != null && $item->reciver_name == Auth::user()->name)
               {
                   
               return $this
               ->from('mfaisalqasimtesting123@gmail.com')
               ->to('Auth::User()->email')
               ->subject('your IncidentNotification for remainder is send')
               ->view('emails.IncidentNotification');
                // return dd('your IncidentNotification for remainder is send');
               }
               else {
                // return dd('your IncidentNotification is send');
    //    return redirect('/');
    //    return view('dashboard.index');
    //    return view('dashboard.index');
       
       $this
       ->from('mfaisalqasimtesting123@gmail.com')
       ->to(Auth::User()->email)
       ->subject('your are login to EQMS')
       ->view('emails.IncidentNotification');
    // redirect('/');
               }
       }
    //    return $this
    //    ->from('mfaisalqasimtesting123@gmail.com')
    //    ->to('devop361@gmail.com')
    //    ->subject('your IncidentNotification is send')
    //    ->view('emails.IncidentNotification');
    }
}
