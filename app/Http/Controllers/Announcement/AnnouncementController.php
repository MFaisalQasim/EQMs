<?php

namespace App\Http\Controllers\Announcement;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Announcement;
use App\Notification;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $announcement = Announcement::where('name', 'LIKE', "%$keyword%")
                ->orWhere('details', 'LIKE', "%$keyword%")
                ->orWhere('type', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $announcement = Announcement::paginate($perPage);
            }

            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
            return view('AnnouncementController.announcement.index', compact('announcement','notification'));
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('AnnouncementController.announcement.create');
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'details' => 'required',
			'type' => 'required'
		]);
            $requestData = $request->all();
            
            Announcement::create($requestData);
            return redirect('Announcement/announcement')->with('flash_message', 'Announcement added!');
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $announcement = Announcement::findOrFail($id);
            return view('AnnouncementController.announcement.show', compact('announcement'));
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $announcement = Announcement::findOrFail($id);
            return view('AnnouncementController.announcement.edit', compact('announcement'));
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'details' => 'required',
			'type' => 'required'
		]);
            $requestData = $request->all();
            
            $announcement = Announcement::findOrFail($id);
             $announcement->update($requestData);

             return redirect('Announcement/announcement')->with('flash_message', 'Announcement updated!');
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
        $model = str_slug('announcement','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Announcement::destroy($id);

            return redirect('Announcement/announcement')->with('flash_message', 'Announcement deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
