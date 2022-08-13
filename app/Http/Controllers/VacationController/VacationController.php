<?php

namespace App\Http\Controllers\VacationController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Notification;
use App\Vacation;
use Illuminate\Http\Request;
use App\User;
use Auth;

class VacationController extends Controller
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 5;

            if (!empty($keyword)) {
                $vacation = Vacation::where('name', 'LIKE', "%$keyword%")
                ->orWhere('approval', 'LIKE', "%$keyword%")
                ->orWhere('start_date', 'LIKE', "%$keyword%")
                ->orWhere('end_date', 'LIKE', "%$keyword%")
                ->orWhere('emp_id', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $vacation = Vacation::paginate($perPage);
                // $user = User::where('id', auth()->user()->id);
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
            return view('Vacation.vacation.index', compact('notification', 'vacation'));
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('Vacation.vacation.create');
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
        // return  $request;
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			// 'name' => 'required',
			// 'approval' => 'required',
			// 'emp_id' => 'required'
		]);
            $requestData = $request->all();
            
            $vac = new Vacation();
            $vac->name          =  auth()->user()->name;
            $vac->start_date          =  $request->start_date;
            $vac->end_date          =  $request->end_date;
            $vac->emp_id          = Auth::User()->id;

            $vac->save();
            return redirect('vacation/vacation')->with('flash_message', 'Vacation added!');
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $vacation = Vacation::findOrFail($id);
            return view('Vacation.vacation.show', compact('vacation'));
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $vacation = Vacation::findOrFail($id);
            // $vacation = new Vacation();
            return view('Vacation.vacation.edit', compact('vacation'));
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'approval' => 'required',
			// 'emp_id' => 'required'
		]);
            $requestData = $request->all();
            
            $vacation = Vacation::findOrFail($id);
             $vacation->update($requestData);

             return redirect('vacation/vacation')->with('flash_message', 'Vacation updated!');
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
        $model = str_slug('vacation','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Vacation::destroy($id);

            return redirect('vacation/vacation')->with('flash_message', 'Vacation deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
