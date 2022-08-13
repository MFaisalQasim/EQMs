<?php

namespace App\Http\Controllers\MotivationalQuotes;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\MotivationalQuote;
use Illuminate\Http\Request;
use App\Notification;
use App\Helpers\AppHelper;
use Auth;
use Storage;
use Session;
use DB;
use Config;


class MotivationalQuotesController extends Controller
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 5;

            if (!empty($keyword)) {
                $motivationalquotes = MotivationalQuote::where('qoute', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $motivationalquotes = MotivationalQuote::paginate($perPage);
                // $motivationalquotes = MotivationalQuote::latest();
            }

            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
            return view('MotivationalQuotes.motivational-quotes.index', compact('motivationalquotes', 'notification'));
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('MotivationalQuotes.motivational-quotes.create');
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
        $model = str_slug('motivationalquotes','-');
        $ErrorMsg = "";
        $itemAttachment = [];
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            // $this->validate($request, [
            //     'name' => 'required',
            //     'file' => 'required'
            // ]);
            //  $requestData = $request->all();
            $UploadTourImagesPath = Config::get("Constants.attachment_paths.MotivationalQuote");

            // $requestData = $request->all();
            // $doc->user_id          = Auth::User()->id;
           
            // $motivational_quote = new MotivationalQuote;

            if ($ErrorMsg == "") {
                // for ($i = 0; $i < count($request->file); $i++) {
                    // $SavedTourAttachment = AppHelper::SaveFileAndGetPath($request->file[$i], $UploadTourImagesPath);
                    $SavedTourAttachment = AppHelper::SaveFileAndGetPath($request->image, $UploadTourImagesPath);
                    // if ($SavedTourAttachment["reply"] == 1) {
                        // $itemAttachment[$i] = $SavedTourAttachment["path"];
                        // return$SavedTourAttachment;
                         $itemAttachment = $SavedTourAttachment["path"];
                        // $motivational_quote = new MotivationalQuote();
                        MotivationalQuote::create([
                            "qoute" => $request->qoute,
                            "image" => $itemAttachment,
                            // "file" => $itemAttachment[$i],
                        ]);
                    // } else {
                    //     $ErrorMsg = $SavedTourAttachment["msg"];
                    // }
                // }
                // $motivational_quote->save();
            }
            return redirect('motivationalquotes/motivational-quotes')->with('flash_message', 'MotivationalQuote added!');
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $motivationalquote = MotivationalQuote::findOrFail($id);
            return view('MotivationalQuotes.motivational-quotes.show', compact('motivationalquote'));
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $motivationalquote = MotivationalQuote::findOrFail($id);
            return view('MotivationalQuotes.motivational-quotes.edit', compact('motivationalquote'));
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            
            $requestData = $request->all();
            
            $motivationalquote = MotivationalQuote::findOrFail($id);
             $motivationalquote->update($requestData);

             return redirect('motivationalquotes/motivational-quotes')->with('flash_message', 'MotivationalQuote updated!');
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
        $model = str_slug('motivationalquotes','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            MotivationalQuote::destroy($id);

            return redirect('motivationalquotes/motivational-quotes')->with('flash_message', 'MotivationalQuote deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
}
