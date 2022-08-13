<?php

namespace App\Http\Controllers\HealthAndSafetyInspectionListController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\HealthAndSafetyInspectionList;
use Illuminate\Http\Request;

class HealthAndSafetyInspectionListController extends Controller
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $HAndSinspectionlist = HealthAndSafetyInspectionList::where('health_and_safety_inspections_id', 'LIKE', "%$keyword%")
                ->orWhere('list_item', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $HAndSinspectionlist = HealthAndSafetyInspectionList::paginate($perPage);
            }

            return view('HealthAndSafetyInspectionList.health-and-safety-inspection-list.index', compact('HAndSinspectionlist'));
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('HealthAndSafetyInspectionList.health-and-safety-inspection-list.create');
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'areas_inspected' => 'required'
		]);
            $requestData = $request->all();
            
            HealthAndSafetyInspectionList::create($requestData);
            return redirect('health-and-safety-inspection-list')->with('flash_message', 'HealthAndSafetyInspectionList added!');
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $HAndSinspectionlist = HealthAndSafetyInspectionList::findOrFail($id);
            return view('HealthAndSafetyInspectionList.health-and-safety-inspection-list.show', compact('HAndSinspectionlist'));
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $HAndSinspectionlist = HealthAndSafetyInspectionList::findOrFail($id);
            return view('HealthAndSafetyInspectionList.health-and-safety-inspection-list.edit', compact('HAndSinspectionlist'));
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'list_item' => 'required'
		]);
            $requestData = $request->all();
            $HAndSinspectionlist = HealthAndSafetyInspectionList::findOrFail($id);
             $HAndSinspectionlist->update($requestData);

             return redirect('health-and-safety-inspection-list')->with('flash_message', 'HealthAndSafetyInspectionList updated!');
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
        $model = str_slug('healthandsafetyinspectionlist','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            HealthAndSafetyInspectionList::destroy($id);

            return redirect('health-and-safety-inspection-list')->with('flash_message', 'HealthAndSafetyInspectionList deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
