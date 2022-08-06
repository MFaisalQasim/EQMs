<?php

namespace App\Http\Controllers\CalenderController;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\CrudEvents;

use App\Calender;
use App\Notification;
use Illuminate\Http\Request;

class CalenderController extends Controller
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
        if($request->ajax()) {  
            $data = CrudEvents::whereDate('event_start', '>=', $request->start)
                ->whereDate('event_end',   '<=', $request->end)
                ->get(['id', 'event_name', 'event_start', 'event_end']);
            return response()->json($data);
        }
        
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $calender = Calender::where('title', 'LIKE', "%$keyword%")
                ->orWhere('start', 'LIKE', "%$keyword%")
                ->orWhere('end', 'LIKE', "%$keyword%")
                ->orWhere('url', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                // $calender = Calender::paginate($perPage);
                $calender = Calender::get();
            }
            // return 'task';
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('Calender.calender.index', compact('calender', 'notification'));
        }
        return response(view('403'), 403);

    }

    public function calendarEvents(Request $request)
    {
 
        switch ($request->type) {
           case 'create':
              $event = CrudEvents::create([
                  'event_name' => $request->event_name,
                  'event_start' => $request->event_start,
                  'event_end' => $request->event_end,
              ]);
 
              return response()->json($event);
             break;
  
           case 'edit':
              $event = CrudEvents::find($request->id)->update([
                  'event_name' => $request->event_name,
                  'event_start' => $request->event_start,
                  'event_end' => $request->event_end,
              ]);
 
              return response()->json($event);
             break;
  
           case 'delete':
              $event = CrudEvents::find($request->id)->delete();
  
              return response()->json($event);
             break;
             
           default:
             # ...
             break;
        }
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('Calender.calender.create');
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
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'title' => 'required',
			'start' => 'required'
		]);
            $requestData = $request->all();
            
            Calender::create($requestData);
            return redirect('calender/calender')->with('flash_message', 'Calender added!');
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
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $calender = Calender::findOrFail($id);
            return view('Calender.calender.show', compact('calender'));
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
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $calender = Calender::findOrFail($id);
            return view('Calender.calender.edit', compact('calender'));
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
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'title' => 'required',
			'start' => 'required'
		]);
            $requestData = $request->all();
            
            $calender = Calender::findOrFail($id);
             $calender->update($requestData);

             return redirect('calender/calender')->with('flash_message', 'Calender updated!');
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
        $model = str_slug('calender','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Calender::destroy($id);

            return redirect('calender/calender')->with('flash_message', 'Calender deleted!');
        }
        return response(view('403'), 403);

    }
}
