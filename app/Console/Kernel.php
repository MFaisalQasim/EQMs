<?php

namespace App\Console;

use App\Console\Commands\RefreshSite;
use Appzcoder\CrudGenerator\Commands\CrudCommand;
use Appzcoder\CrudGenerator\Commands\CrudControllerCommand;
use Illuminate\Console\Scheduling\Schedule;
use App\Console\Commands\SendReminderEmails;
use App\Console\Commands\SendReminderNotification;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        CrudCommand::class,
        CrudControllerCommand::class,
        RefreshSite::class,
        SendReminderEmails::class,
        SendReminderNotification::class
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command(RefreshSite::class)
        //           ->everyFifteenMinutes();
        //           $schedule->call(
        //             new Notification)->daily()->when(function () {
        //                 return true;
        //             });;
                //   $schedule->call(function () {
                //     DB::table('recent_users')->delete();
                // })->daily();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__ . '/Commands');

        require base_path('routes/console.php');
    }
}
