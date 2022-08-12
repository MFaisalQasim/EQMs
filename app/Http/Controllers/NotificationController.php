<?php

namespace App\Http\Controllers\NotificationController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

// use App\Notification;
use App\User;
use App\Notification;
use Illuminate\Http\Request;
use Carbon\Carbon;
class NotificationController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */

    // public function index(Request $request)
    // {
    //     $model = str_slug('incident','-');
    //     if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
    //         $keyword = $request->get('search');
    //         $perPage = 5;

    //         if (!empty($keyword)) {
    //             $incident = Notification::where('incident_reporter', 'LIKE', "%$keyword%")
    //             ->orWhere('date', 'LIKE', "%$keyword%")
    //             ->orWhere('incident_description', 'LIKE', "%$keyword%")
    //             ->orWhere('investigation', 'LIKE', "%$keyword%")
    //             ->orWhere('corrective_actions', 'LIKE', "%$keyword%")
    //             ->orWhere('corrective_incident', 'LIKE', "%$keyword%")
    //             ->orWhere('review_date', 'LIKE', "%$keyword%")
    //             ->orWhere('responce', 'LIKE', "%$keyword%")
    //             ->orWhere('check_status', 'LIKE', "%$keyword%")
    //             ->paginate($perPage);
    //         } else {
    //             $incident = Notification::paginate($perPage);
    //         }
    //         $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
    //         return view('Notification.incident.index', compact('incident', 'notification'));
    //     }
    //     return response(view('403'), 403);

    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    // public function create()
    // {
    //     $model = str_slug('incident','-');
        
    //     $users = User::get();
    //     if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
    //         return view('Notification.incident.create', compact('users'));
    //     }
    //     return response(view('403'), 403);
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    // public function store(Request $request)
    // {
        
    //     $model = str_slug('incident','-');
    //     if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
    //         $this->validate($request, [
	// 		// 'incident_reporter' => 'required',
	// 		'date' => 'required',
	// 		'incident_description' => 'required',
	// 		// 'investigation' => 'required',
	// 		// 'corrective_actions' => 'required',
	// 		// 'corrective_incident' => 'required',
	// 		// 'review_date' => 'required',
	// 		// 'responce' => 'required',
	// 		// 'check_status' => 'required'
	// 	]);
    //         $requestData = $request->all();
            
    //         // Notification::create($requestData);
    //         $incident = new Notification();

    //         $incident->incident_reporter = auth()->user()->name;
    //         $incident->incident_reporter = $request->incident_reported_to;
            
    //         $incident->date = $request->date;
    //         $incident->incident_description = $request->incident_description;
    //         $incident->save();

    //         $notification = new Notification();
    //         $notification->reference_issue_id = $incident->id;
    //         $notification->reporter_name = auth()->user()->name;
    //         $notification->notifications_title = "Notification Created";
    //         $notification->reciver_name = $request->incident_reported_to;
    //         $notification->date = $request->date;
    //         $notification->notifications_description = $request->incident_description;
    //         $notification->save();

    //         return redirect('incident/incident')->with('flash_message', 'Notification added!');
    //     }
    //     return response(view('403'), 403);
    // }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    // public function show($id)
    // {
    //     $model = str_slug('incident','-');
    //     if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
    //         $incident = Notification::findOrFail($id);
    //         return view('Notification.incident.show', compact('incident'));
    //     }
    //     return response(view('403'), 403);
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    // public function edit($id)
    // {
    //     $model = str_slug('incident','-');
    //     if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
    //         $incident = Notification::findOrFail($id);
    //         return view('Notification.incident.edit', compact('incident'));
    //     }
    //     return response(view('403'), 403);
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        
        // return $request->responce;
        $model = str_slug('incident','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			// 'incident_reporter' => 'required',
			// 'date' => 'required',
			// 'incident_description' => 'required',
			// 'investigation' => 'required',
			// 'corrective_actions' => 'required',
			// 'corrective_incident' => 'required',
			// 'responce' => 'required',
			'review_date' => 'required',
			// 'check_status' => 'required'
		]);
            $requestData = $request->all();
            $incident = Notification::findOrFail($id);
             $incident->update($requestData);

             //  $notification = Notification findOrFail($incident->id);
             $notification = new Notification();
             $notification->reference_issue_id = $incident->id;
             $notification->notifications_title = "Notification Updated";
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->incident_reported_to;
             $notification->date = $request->review_date;
            //  $notification->notifications_description = $request->incident_description;
            if ( $incident->check_status = 'closed') {
                $current = Carbon::now();
                $notification->due_date = $current->addDays(20);

              }
             $notification->save();
             return redirect('/send-email')->with('flash_message', 'Notification updated!');
        }
        return response(view('403'), 403);
    }

    /**
     * Remove the specified resource from storage.
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    // public function destroy($id)
    // {
    //     $model = str_slug('incident','-');
    //     if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
    //         Notification::destroy($id);
    //         return redirect('incident/incident')->with('flash_message', 'Notification deleted!');
    //     }
    //     return response(view('403'), 403);

    // }
}
