<?php

namespace App\Http\Controllers\personalRecordsController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Notification;
use App\Helpers\AppHelper;
use App\personalRecord;
use Illuminate\Http\Request;

class personalRecordsController extends Controller
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
            return view('personalRecords.personal-records.index2', compact('personalrecords', 'notification'));
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('personalRecords.personal-records.create');
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'position' => 'required'
		]);
            $requestData = $request->all();
            
            personalRecord::create($requestData);
            return redirect('personalRecords/personal-records')->with('flash_message', 'personalRecord added!');
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $personalrecord = personalRecord::findOrFail($id);
            return view('personalRecords.personal-records.show', compact('personalrecord'));
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $personalrecord = personalRecord::findOrFail($id);
            return view('personalRecords.personal-records.edit', compact('personalrecord'));
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'position' => 'required'
		]);
            $requestData = $request->all();
            
            $personalrecord = personalRecord::findOrFail($id);
             $personalrecord->update($requestData);

             return redirect('personalRecords/personal-records')->with('flash_message', 'personalRecord updated!');
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
        $model = str_slug('personalrecords','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            personalRecord::destroy($id);

            return redirect('personalRecords/personal-records')->with('flash_message', 'personalRecord deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
