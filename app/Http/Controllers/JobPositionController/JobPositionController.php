<?php

namespace App\Http\Controllers\JobPositionController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\JobPosition;
use Illuminate\Http\Request;

class JobPositionController extends Controller
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $jobposition = JobPosition::where('Job_title', 'LIKE', "%$keyword%")
                ->orWhere('Purpose', 'LIKE', "%$keyword%")
                ->orWhere('Answerable_to', 'LIKE', "%$keyword%")
                ->orWhere('Responsible_for', 'LIKE', "%$keyword%")
                ->orWhere('Skills', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $jobposition = JobPosition::paginate($perPage);
            }

            return view('JobPosition.job-position.index', compact('jobposition'));
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('JobPosition.job-position.create');
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'Job_title' => 'required',
			'Purpose' => 'required',
			'Answerable_to' => 'required',
			'Responsible_for' => 'required',
			'Skills' => 'required'
		]);
            $requestData = $request->all();
            
            JobPosition::create($requestData);
            return redirect('job-position')->with('flash_message', 'JobPosition added!');
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $jobposition = JobPosition::findOrFail($id);
            return view('JobPosition.job-position.show', compact('jobposition'));
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $jobposition = JobPosition::findOrFail($id);
            return view('JobPosition.job-position.edit', compact('jobposition'));
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'Job_title' => 'required',
			'Purpose' => 'required',
			'Answerable_to' => 'required',
			'Responsible_for' => 'required',
			'Skills' => 'required'
		]);
            $requestData = $request->all();
            
            $jobposition = JobPosition::findOrFail($id);
             $jobposition->update($requestData);

             return redirect('job-position')->with('flash_message', 'JobPosition updated!');
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
        $model = str_slug('jobposition','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            JobPosition::destroy($id);

            return redirect('job-position')->with('flash_message', 'JobPosition deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
