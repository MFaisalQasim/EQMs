<?php

namespace App\Http\Controllers\DocumentsController;

use App\Http\Controllers\Controller;

// use App\Http\Requests;
// use App\Document;
// use App\DocumentFile;
// use Illuminate\Http\Request;
// use App\Helpers\AppHelper;
// use Auth;
// use Config;

use App\Http\Requests;
use App\Document;
use App\DocumentFile;
use Illuminate\Http\Request;
use App\Helpers\AppHelper;
use App\Notification;
use Auth;
use Storage;
use Session;
use DB;
use Config;

class DocumentsController extends Controller
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
        // return $request;
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 5;

            if (!empty($keyword)) {
                $documents = Document::where('name', 'LIKE', "%$keyword%")
                ->orWhere('version', 'LIKE', "%$keyword%")
                ->orWhere('file', 'LIKE', "%$keyword%")
                ->paginate($perPage);
                $documentFile = DocumentFile::get();
            } else {
                $documentFile = DocumentFile::get();
                // return $documentFile = DocumentFile::where('doc_id', $request->id)->get();
                // $documents = Document::where('name', '=', Auth::id() )->paginate($perPage);
                $documents = Document::paginate($perPage);
                
            }
            $notification = Notification::orderBy('id', 'DESC')->take(5)->get();
            return view('Documents.documents.index', compact('documents', 'documentFile', 'notification'));
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
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('Documents.documents.create');
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
        $ErrorMsg = "";
        $itemAttachment = [];
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
                'name' => 'required',
                'file' => 'required'
            ]);
             $requestData = $request->all();
            $UploadTourImagesPath = Config::get("Constants.attachment_paths.DocumentFile");
            // return $UploadTourImagesPath;
            
            // Document::create($requestData);

            $doc = new Document();
            $doc->name             = $request->name;
            // $doc->user_id          = Auth::User()->id;

            if ($ErrorMsg == "") {
                $doc->save();
            }
            if ($ErrorMsg == "") {
                    
                for ($i = 0; $i < count($request->file); $i++) {
                    $SavedTourAttachment = AppHelper::SaveFileAndGetPath($request->file[$i], $UploadTourImagesPath);
    
                    if ($SavedTourAttachment["reply"] == 1) {
                        $itemAttachment[$i] = $SavedTourAttachment["path"];
                        $docFile = new DocumentFile();
                        DocumentFile::create([
                            "doc_id" => $doc->id,
                            "name" => $doc->name,
                            "version" => $request->version,
                            "file" => $itemAttachment[$i],
                            // "user_id" =>  Auth::User()->id
                        ]);
                    } else {
                        $ErrorMsg = $SavedTourAttachment["msg"];
                    }
                }
            }
            return redirect('Documents/documents')->with('flash_message', 'Document added!');
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
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $document = Document::findOrFail($id);
            // return $documentFile = DocumentFile::findOrFail(auth()->user()->id);
            $documentFile = DocumentFile::where('doc_id', $id)->get();
            return view('Documents.documents.show', compact('document', 'documentFile'));
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
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $document = Document::findOrFail($id);
            return view('Documents.documents.edit', compact('document'));
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
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			// 'version' => 'required'
		]);
            $requestData = $request->all();
            
            $document = Document::findOrFail($id);
             $document->update($requestData);

             return redirect('Documents/documents')->with('flash_message', 'Document updated!');
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
        $model = str_slug('documents','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Document::destroy($id);

            return redirect('Documents/documents')->with('flash_message', 'Document deleted!');
        }
        return response(view('403'), 403);

    }
    public function callAction($method, $parameters)
      {
          return parent::callAction($method, array_values($parameters));
      }
    
    
}
