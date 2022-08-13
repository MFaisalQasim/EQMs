<?php

namespace App\Http\Controllers\EmergencyResponseExercise;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\EmergencyResponseExercise;
use Illuminate\Http\Request;
use App\Notification;

class EmergencyResponseExerciseController extends Controller
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

    public function index(Request $request)
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $emergencyresponseexercise = EmergencyResponseExercise::where('type', 'LIKE', "%$keyword%")
                ->orWhere('schedule', 'LIKE', "%$keyword%")
                ->orWhere('invitation_status', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $emergencyresponseexercise = EmergencyResponseExercise::paginate($perPage);
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('EmergencyResponseExercise.emergency-response-exercise.index', compact('emergencyresponseexercise', 'notification'));
        }
        return response(view('403'), 403);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('EmergencyResponseExercise.emergency-response-exercise.create');
        }
        return response(view('403'), 403);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            $emergencyresponseexercise =  EmergencyResponseExercise::create($requestData);
            $notification = new Notification();
            $notification->reference_issue_id = $emergencyresponseexercise->id;
            $notification->reporter_name = auth()->user()->name;
            $notification->notifications_title = "Incident Created";
            $notification->reciver_name = $request->employee_to;
            $notification->date = $request->schedule;
            $notification->notifications_description = $request->incident_description;
            $notification->save();
            return redirect('emergency-response-exercise/emergency-response-exercise')->with('flash_message', 'EmergencyResponseExercise added!');
        }
        return response(view('403'), 403);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $emergencyresponseexercise = EmergencyResponseExercise::findOrFail($id);
            return view('EmergencyResponseExercise.emergency-response-exercise.show', compact('emergencyresponseexercise'));
        }
        return response(view('403'), 403);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $emergencyresponseexercise = EmergencyResponseExercise::findOrFail($id);
            return view('EmergencyResponseExercise.emergency-response-exercise.edit', compact('emergencyresponseexercise'));
        }
        return response(view('403'), 403);
    }

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
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            $emergencyresponseexercise = EmergencyResponseExercise::findOrFail($id);
            //  $emergencyresponseexercise->update($requestData);
             $emergencyresponseexercise->corrective_actions = $request->corrective_actions;
             
             $emergencyresponseexercise->update($requestData);
             $notification = new Notification();
             $notification->reference_issue_id = $emergencyresponseexercise->id;
             $notification->notifications_title = "Incident Updated";
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->employee_to;
             $notification->date = $request->review_date;
            //  $notification->notifications_description = $request->incident_description;
             $notification->save();
             $emergencyresponseexercise =  $request->review_date;
             return redirect('emergency-response-exercise/emergency-response-exercise')->with('flash_message', 'EmergencyResponseExercise updated!');
        }
        return response(view('403'), 403);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        $model = str_slug('emergencyresponseexercise','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            EmergencyResponseExercise::destroy($id);

            return redirect('emergency-response-exercise/emergency-response-exercise')->with('flash_message', 'EmergencyResponseExercise deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
