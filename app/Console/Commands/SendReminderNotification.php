<?php

namespace App\Console\Commands;

use App\User;
use App\Models\Reminder;
use Illuminate\Console\Command;
use App\Mail\ReminderEmailDigest;
use Illuminate\Support\Facades\Mail;

class SendReminderNotification extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'reminder:notification';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        // Get all reminders for today
        $reminders =  Notifications::query()
            // ->with(['lead'])
            ->where('reminder_date', now()->format('Y-m-d'))
            ->where('response', 'pending')
            ->orderByDesc('user_id')
            ->get();

        // group all reminders by user
        $data = [];
        foreach ($reminders as $reminder) {
            $data[$reminder->user_id][] = $reminder->toArray();
        }
        dd($data);

        foreach ($data as $userId => $reminders) {
            $this->sendEmailToUser($userId, $reminders);
        }
        
    }

    private function sendEmailToUser($userId, $reminders)
    {
        echo 'sendEmailToUser';
        return 'sendEmailToUser';
        $user = User::find($userId);

        Mail::to($user)->send(new ReminderEmailDigest($reminders));
    }
}
