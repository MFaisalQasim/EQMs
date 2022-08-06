<?php

namespace App\Http\Controllers\ManagementReviewController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\ManagementReview;
use Illuminate\Http\Request;
use App\Notification;

class ManagementReviewController extends Controller
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $managementreview = ManagementReview::where('upload_doc', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $managementreview = ManagementReview::paginate($perPage);
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();

            return view('ManagementReview.management-review.index', compact('managementreview', 'notification'));
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('ManagementReview.management-review.create');
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            ManagementReview::create($requestData);
            return redirect('management-review/management-review')->with('flash_message', 'ManagementReview added!');
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $managementreview = ManagementReview::findOrFail($id);
            return view('ManagementReview.management-review.show', compact('managementreview'));
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $managementreview = ManagementReview::findOrFail($id);
            return view('ManagementReview.management-review.edit', compact('managementreview'));
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            $managementreview = ManagementReview::findOrFail($id);
             $managementreview->update($requestData);

             return redirect('management-review/management-review')->with('flash_message', 'ManagementReview updated!');
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
        $model = str_slug('managementreview','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            ManagementReview::destroy($id);

            return redirect('management-review/management-review')->with('flash_message', 'ManagementReview deleted!');
        }
        return response(view('403'), 403);

    }
}
