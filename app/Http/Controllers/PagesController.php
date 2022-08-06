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
    public function Test()
    {
        // $models = scandir(public_path()."/models");
        // return view('layouts.frontend.test');
    }
    public function Dashboard()
    {
        // return "here";
        $documents = Document::paginate(5);
        $motivationalquotes = MotivationalQuote::get()->last();
        $announcement = Announcement::get();
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
        $incident = Incident::get();
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