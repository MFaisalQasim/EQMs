<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Notification;
use Carbon\Carbon;
class LoginController extends Controller
{
    use AuthenticatesUsers;
    protected $redirectTo = '/dashboard';
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function authenticated(Request $request, $user)
    {
        if (activity($user->name)
        ->performedOn($user)
        ->causedBy($user)
        ->log('LoggedIn')) {
            return redirect('/');
        } else {
            return redirect('/login');
        }
        
        

        // if($user->hasRole('admin')){

        //     // dd('if ma');
        //     return redirect('/');x
        // }elseif($user->hasRole('developer'))
        // {
        //     // dd('elseif ma');
        //     return redirect('/');
          
        // }
        // else
        // {
        //     dd('else');
            // return redirect('/');
        // }
    }

    public function logout(Request $request)
    {
        $user = auth()->user();
        activity($user->name)
            ->performedOn($user)
            ->causedBy($user)
            ->log('LoggedOut');
        $this->guard()->logout();
        $request->session()->invalidate();
        return redirect('/');
    }
}
