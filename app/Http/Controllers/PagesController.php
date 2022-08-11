<?php

namespace App\Http\Controllers;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Redirect;
use Intervention\Image\Facades\Image;
use App\Document;
use App\Announcement;
use App\Notification;
use App\Incident;
use App\Task;
use App\MotivationalQuote; 
use App\AddTraining;
use App\Http\Controllers\personalRecord;
use Illuminate\Support\Facades\Validator;
use Auth;
use App\Role;
use App\Audit;


class PagesController extends Controller
{
    // public function Login()
    // {
        
    //     $notificationAlert = Notification::get();
    // return view('dashboard.index', compact('notificationAlert'));
    // }
    public function Dashboard()
    {
        // return "here";
        $documents = Document::paginate(5);
        $motivationalquotes = MotivationalQuote::get()->last();
        $announcement = Announcement::get();
        // if ($notification->due_date = null) {
            $notification = Notification::where("due_date", '=', null)->orderBy('id', 'DESC')->take(5)->get();

            $incident = Incident::get();
            $notificationAlert = Notification::get();
 
            foreach ($notificationAlert as $item)
               { 
                if ($item->due_date == date('Y-m-d') && $item->due_date != null && $item->reciver_name == Auth::user()->name)
                 {   
                    // dd($item->due_date, 'in loop');
        
                    $notificationNewAlert = New Notification;
                    $notificationNewAlert->reference_issue_id = $item->reference_issue_id;
                    $notificationNewAlert->reporter_name = $item->reporter_name;
                    $notificationNewAlert->notifications_title = "Due Date Alert";
                    $notificationNewAlert->reciver_name = $item->reciver_name;
                    $notificationNewAlert->date = date('Y-m-d');
                    $notificationNewAlert->notifications_description = $item->notifications_description;
                    $notificationNewAlert->save();
                return redirect('/send-email');
                }
                elseif($item->remainder == date('Y-m-d') && $item->remainder != null && $item->reciver_name == Auth::user()->name)
                    {
                        
                    $notificationNewAlert = New Notification;
                    $notificationNewAlert->reference_issue_id = $item->reference_issue_id;
                    $notificationNewAlert->reporter_name = $item->reporter_name;
                    $notificationNewAlert->notifications_title = "Remainder Alert";
                    $notificationNewAlert->reciver_name = $item->reciver_name;
                    $notificationNewAlert->date = date('Y-m-d');
                    $notificationNewAlert->notifications_description = $item->notifications_description;
                    $notificationNewAlert->save();
                        echo($item->due_date . 'elseif'. date('Y-m-d'));
                    }
                // elseif($item->due_date != date('Y-m-d'))
                //     {echo($item->due_date . 'elseif'. date('Y-m-d'));}
            //     else
            //    { echo($item->due_date . 'else');}
            }
        
        return view('dashboard.index', compact('documents', 'motivationalquotes', 'announcement', 'notification','incident'));
    }
    public function CRM()
    {
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        return view('layouts.frontend.crm', compact('notification'));
    }
    public function HumanResources()
    {
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        return view('layouts.frontend.humanResources', compact('notification'));
    }
    public function Procedures()
    {
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        return view('layouts.frontend.procedures', compact('notification'));
    }
    public function TrainingCalender()
    {
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        $addTraining = AddTraining::get();
        return view('layouts.frontend.trainingCalender', compact('notification', 'addTraining'));
    }
    public function index2(Request $request)
    {
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 10;

            if (!empty($keyword)) {
                $personalrecords = personalRecord::where('name', 'LIKE', "%$keyword%")
                ->orWhere('position', 'LIKE', "%$keyword%")
                ->orWhere('details', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $personalrecords = personalRecord::paginate($perPage);
            }

            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
            return view('personalRecords.personal-records.index', compact('personalrecords', 'notification'));
        }
        
        return response(view('403'), 403);

    }
    
    public function ViewEmployee(Request $request)
    {
        $users = User::where('Managed_by' , $request->user_name)->get();
        return view('users.index2'
        ,compact('users')
    );
    }
    public function Audits(Request $request)
    {
                $audits = Audit::get();
                $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        return view('layouts.frontend.Audits.audits'
        ,compact('audits', 'notification')
    );
    }
    public function NewAudits(Request $request)
    {
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $audits = Audit::where('type', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->orWhere('schedule', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $audits = Audit::where('status', 'pending')->paginate($perPage);
                    //  $audits = Audit::get();
                    //  $audits = Audit::where('status', 'pending')->get();
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('Audits.audits.index', compact('audits', 'notification'));
        }
        return response(view('403'), 403);

    }
    public function PastAudits(Request $request)
    {
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $audits = Audit::where('type', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->orWhere('schedule', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $audits = Audit::where('status', 'pending')->paginate($perPage);
                    //  $audits = Audit::get();
                    //  $audits = Audit::where('status', 'pending')->get();
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('Audits.audits.index', compact('audits', 'notification'));
        }
        return response(view('403'), 403);

    }
    public function PendingAudits(Request $request)
    {
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $audits = Audit::where('type', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->orWhere('schedule', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $audits = Audit::where('status', 'pending')->paginate($perPage);
                    //  $audits = Audit::get();
                    //  $audits = Audit::where('status', 'pending')->get();
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('Audits.audits.index', compact('audits', 'notification'));
        }
        return response(view('403'), 403);
    }
}