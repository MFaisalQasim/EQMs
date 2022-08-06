<?php

namespace App\Http\Controllers\AuditsController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Audit;
use Illuminate\Http\Request;
use App\Notification;

class AuditsController extends Controller
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $audits = Audit::where('type', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->orWhere('schedule', 'LIKE', "%$keyword%")
                ->orWhere('review', 'LIKE', "%$keyword%")
                ->orWhere('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $audits = Audit::paginate($perPage);
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('Audits.audits.index', compact('audits', 'notification'));
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('Audits.audits.create');
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
                'inspector_name' => 'required',
                'schedule' => 'required',
                // 'signed' => 'required',
            ]);
            $requestData = $request->all();
            // $audit = Audit::create($requestData);
            $folderPath = public_path('signatures/'); // create signatures folder in public directory
        $image_parts = explode(";base64,", $request->signed);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $image_base64 = base64_decode($image_parts[1]);
        $file = $folderPath . uniqid() . '.' . $image_type;
        file_put_contents($file, $image_base64);

        // Save in your data in database here.
        return $request;
        $audit = Audit::create([
            // dd($request->inspector_name),
            // dd($image_type),
            'name' => $request->inspector_name,
            'brief_results' => $request->brief_results,
            'schedule' => $request->schedule,
            'signature' => uniqid() . '.' . $image_type
        ]);

            $notification = new Notification();
             $notification->reference_issue_id = $audit->id;
             $notification->notifications_title = "Audit Created";
             $notification->notifications_description = $request->notifications_description;
             $notification->reporter_name = auth()->user()->name;
             $notification->reciver_name = $request->employee_to;
             $notification->date = $audit->schedule;
             $notification->save();
            return redirect('audits/audits')->with('flash_message', 'Audit added!');
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $audit = Audit::findOrFail($id);
            return view('Audits.audits.show', compact('audit'));
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $audit = Audit::findOrFail($id);
            return view('Audits.audits.edit', compact('audit'));
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
                $this->validate($request, [
                    'inspector_name' => 'required',
                'schedule' => 'required',
                // 'signed' => 'required',
            ]);
            $requestData = $request->all();
            
            // return $request->all();
            // return $requestData;
            // return $request->inspector_name;
            $audit = Audit::findOrFail($id);
            $audit->inspector_name = $request->inspector_name;
            // $audit->update();
            $audit->update($requestData);
             return redirect('audits/audits')->with('flash_message', 'Audit updated!');
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
        $model = str_slug('audits','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Audit::destroy($id);
            return redirect('audits/audits')->with('flash_message', 'Audit deleted!');
        }
        return response(view('403'), 403);

    }
}
