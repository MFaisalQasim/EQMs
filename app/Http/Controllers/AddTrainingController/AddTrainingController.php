<?php

namespace App\Http\Controllers\AddTrainingController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\AddTraining;
use App\Notification;

use Illuminate\Http\Request;

class AddTrainingController extends Controller
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $addtraining = AddTraining::where('start_date', 'LIKE', "%$keyword%")
                ->orWhere('end_date', 'LIKE', "%$keyword%")
                ->orWhere('Location_Or_Link', 'LIKE', "%$keyword%")
                ->orWhere('MediaFiles', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $addtraining = AddTraining::paginate($perPage);
            }

            return view('AddTraining.add-training.index', compact('addtraining'));
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('AddTraining.add-training.create');
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'start_date' => 'required',
			'Location_Or_Link' => 'required'
		]);
            $requestData = $request->all();
            
            $addtraining = AddTraining::create($requestData);
            $notification = new Notification();
             $notification->reference_issue_id = $addtraining->id;
             $notification->notifications_title = "AddTraining Created";
             $notification->notifications_description = $request->notifications_description;
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->employee_to;
             $notification->date = $request->start_date;
             $notification->save();
            return redirect('add_training/add-training')->with('flash_message', 'AddTraining added!');
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $addtraining = AddTraining::findOrFail($id);
            return view('AddTraining.add-training.show', compact('addtraining'));
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $addtraining = AddTraining::findOrFail($id);
            return view('AddTraining.add-training.edit', compact('addtraining'));
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'start_date' => 'required',
			'Location_Or_Link' => 'required'
		]);
            $requestData = $request->all();
            
            $addtraining = AddTraining::findOrFail($id);
            $addtraining->response = $request->response;
             $addtraining->update($requestData);
             $notification = new Notification();
              $notification->reference_issue_id = $addtraining->id;
              $notification->reporter_name = auth()->user()->name;
              $notification->notifications_title = "AddTraining Update";
              $notification->notifications_description = $request->notifications_description;
              $notification->reciver_name = $request->employee_to;
              $notification->date = $request->start_date;
              $notification->response = $addtraining->response;
              $notification->save();


             return redirect('add_training/add-training')->with('flash_message', 'AddTraining updated!');
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
        $model = str_slug('addtraining','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            AddTraining::destroy($id);

            return redirect('add_training/add-training')->with('flash_message', 'AddTraining deleted!');
        }
        return response(view('403'), 403);

    }
}
