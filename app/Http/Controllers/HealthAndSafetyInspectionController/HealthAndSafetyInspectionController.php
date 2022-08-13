<?php

namespace App\Http\Controllers\HealthAndSafetyInspectionController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\HealthAndSafetyInspection;
use Illuminate\Http\Request;
use App\Notification;
use App\InspectionList;
use App\HealthAndSafetyInspectionList;
use Carbon\Carbon;

class HealthAndSafetyInspectionController extends Controller
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $healthandsafetyinspection = HealthAndSafetyInspection::where('inspection_timing', 'LIKE', "%$keyword%")
                ->orWhere('invitation_status', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $healthandsafetyinspection = HealthAndSafetyInspection::paginate($perPage);
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('HealthAndSafetyInspection.health-and-safety-inspection.index', compact('healthandsafetyinspection', 'notification'));
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $health_and_safety_inspection_lists = HealthAndSafetyInspectionList::get();
            return view('HealthAndSafetyInspection.health-and-safety-inspection.create', compact('health_and_safety_inspection_lists'));
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
        // return $request;
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
                $this->validate($request, [
                'areas_inspected' => 'required',
                'inspection_timing' => 'required'
            ]); 
            $requestData = $request->all();
            // $inspection_remainder = $request->inspection_timing;
            
            // dd(date('Y-m-d', strtotime('-1 day', strtotime($request->inspection_timing))) , $request->inspection_timing);

        //    $healthandsafetyinspection->inspection_remainder = date('Y-m-d', strtotime('-1 day', strtotime($remainder)));

            $healthandsafetyinspection = HealthAndSafetyInspection::create($requestData);
            // return $healthandsafetyinspection->id;
            // if ($ErrorMsg == "") {
                for ($i = 0; $i < count($request->areas_inspected); $i++) {
                    InspectionList::create([
                        "health_and_safety_inspections_id" => $healthandsafetyinspection->id,
                        "areas_inspected" => $request->areas_inspected[$i],
                    ]);
                }
            // }
            $notification = new Notification();
             $notification->reference_issue_id = $healthandsafetyinspection->id;
             $notification->notifications_title = "HealthAndSafetyInspection Created";
             $notification->notifications_description = $request->notifications_description;
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->employee_to;
             $notification->date = $request->inspection_timing;
             $notification->remainder = date('Y-m-d', strtotime('-1 day', strtotime($request->inspection_timing)));
             $notification->save();
            return redirect('health-and-safety-inspection/health-and-safety-inspection')->with('flash_message', 'HealthAndSafetyInspection added!');
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $healthandsafetyinspection = HealthAndSafetyInspection::findOrFail($id);
            return view('HealthAndSafetyInspection.health-and-safety-inspection.show', compact('healthandsafetyinspection'));
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $healthandsafetyinspection = HealthAndSafetyInspection::findOrFail($id);
            return view('HealthAndSafetyInspection.health-and-safety-inspection.edit', compact('healthandsafetyinspection'));
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            $healthandsafetyinspection = HealthAndSafetyInspection::findOrFail($id);
             $healthandsafetyinspection->update($requestData);
             $notification = new Notification();
             $notification->reference_issue_id = $healthandsafetyinspection->id;
             $notification->notifications_title = "HealthAndSafetyInspection Updated";
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->employee_to;
             $notification->date = $request->inspection_timing;
            //  $notification->incident_description = $request->incident_description;
             $notification->save();

             return redirect('health-and-safety-inspection/health-and-safety-inspection')->with('flash_message', 'HealthAndSafetyInspection updated!');
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
        $model = str_slug('healthandsafetyinspection','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            HealthAndSafetyInspection::destroy($id);

            return redirect('health-and-safety-inspection/health-and-safety-inspection')->with('flash_message', 'HealthAndSafetyInspection deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
