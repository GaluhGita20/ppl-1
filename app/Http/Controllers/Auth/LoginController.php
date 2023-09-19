<?php

namespace App\Http\Controllers\Auth;

use App\Models\Auth\Role;
use App\Models\Auth\User;
use App\Models\Master\Org\OrgStruct;
use App\Models\Master\Org\Position;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * Handle a login request to the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response|\Illuminate\Http\JsonResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if (
            method_exists($this, 'hasTooManyLoginAttempts') &&
            $this->hasTooManyLoginAttempts($request)
        ) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        // A. Auth by user existing with email on local
        if (!env('LDAP_HOSTS') && !env('LDAP_PORT')) {
            if ($this->attemptLogin($request)) {
                if ($request->hasSession()) {
                    $request->session()->put('auth.password_confirmed_at', time());
                }
                $request->merge(['module' => 'auth_login']);
                auth()->user()->addLog('Login berhasil');

                return $this->sendLoginResponse($request);
            }

            $this->incrementLoginAttempts($request);
            return $this->sendFailedLoginResponse($request);
        }

        // B. Auth by ldap
        try {
            // B.1. Check istalasi ldap
            if (!function_exists("ldap_connect")) {
                return back()->withErrors(
                    [
                        'username' => 'LDAP is not installed or enabled.',
                    ]
                )->onlyInput('username');
            }

            // B.2. Check ldap connection
            $ldapconn = ldap_connect(env('LDAP_HOSTS'), env('LDAP_PORT'));
            if (!$ldapconn) {
                return back()->withErrors(
                    [
                        'username' => "Can't connect to LDAP server.",
                    ]
                )->onlyInput('username');
            }

            ldap_set_option($ldapconn, LDAP_OPT_PROTOCOL_VERSION, 3);
            ldap_set_option($ldapconn, LDAP_OPT_REFERRALS, 0);

            // B.3. Check auth ldap
            $username = $request->username;
            $authenticate = @ldap_bind($ldapconn, $username, $request->password);
            if (!$authenticate) {
                // Auth by user existing with email
                if ($this->attemptLogin($request)) {
                    if ($request->hasSession()) {
                        $request->session()->put('auth.password_confirmed_at', time());
                    }
                    $request->merge(['module' => 'auth_login']);
                    auth()->user()
                        ->addLog('Login berhasil');

                    return $this->sendLoginResponse($request);
                } else {
                    return back()->withErrors(
                        [
                            'username' => 'The credentials do not match our LDAP server.',
                        ]
                    )->onlyInput('username');
                }
            }

            $ldap_search_param = "(&(name=$username))";
            $search = ldap_search($ldapconn, env('LDAP_BASE_DN'), $ldap_search_param);
            $entries = ldap_get_entries($ldapconn, $search);

            // dd($entries);

            ldap_close($ldapconn);

            $display_name = substr(str_replace("'", "\'", $entries[0]['displayname'][0]), 0, 150);
            $account_name = substr(str_replace("'", "\'", $entries[0]['samaccountname'][0]), 0, 150);
            $status = substr(str_replace("'", "\'", $entries[0]['useraccountcontrol'][0]), 0, 150);
            $nik = substr(str_replace("'", "\'", $entries[0]['description'][0]), 0, 150);
            $title = isset($entries[0]['title'][0]) ? substr(str_replace("'", "\'", $entries[0]['title'][0]), 0, 150) : null;
            $officename = isset($entries[0]['physicaldeliveryofficename'][0]) ? substr(str_replace("'", "\'", $entries[0]['physicaldeliveryofficename'][0]), 0, 150) : null;

            $position_id = null;
            if (!is_null($title)) {
                $jab_low = strtolower($title);
                $jab = ucwords($jab_low);

                if (!is_null($officename)) {
                    $lok_low = strtolower($officename);
                    $lok = ucwords($lok_low);

                    $struct = OrgStruct::where('name', $lok)->first();
                    if ($struct) {
                        $position = Position::where('name', $jab)
                            ->where('location_id', $struct->id)
                            ->first();
                        $position_id = $position->id ?? null;
                    }
                }
            }

            $user = User::where('nik', $nik)->first();
            if (!$user) {
                $user = User::where('username', $username)->first();
            }

            if (!$user) {
                $user = new User;
                $user->status = ($status == '512') ? 'waiting.verification' : 'nonactive';
            } else {
                if ($user->status == 'waiting.verification') {
                    $user->status = ($status == '512') ? 'waiting.verification' : 'nonactive';
                }

                if ($user->status == 'active') {
                    $user->status = ($status == '512') ? 'active' : 'nonactive';
                }

                if ($user->status == 'nonactive') {
                    $user->status = ($status == '512') ? 'active' : 'nonactive';
                }
            }

            $user->name = $display_name;
            $user->username = $username;
            $user->email = $account_name . '@csf.co.id';
            if (!$user->password) {
                $user->password = bcrypt($request->password);
            }
            $user->nik = $nik;
            if (!$user->position_id) {
                $user->position_id = $position_id;
            }
            $user->ldap_pass = $request->password;
            $user->ldap_title = $title;
            $user->ldap_physicaldeliveryofficename = $officename;
            $user->save();

            if (!$user->roles()->exists()) {
                if ($position = $user->position) {
                    $role = Role::where('name', $position->name)->first();
                    if ($role) {
                        $user->syncRoles($role);
                        $user->status = ($status == '512') ? 'active' : 'nonactive';
                        $user->save();
                    }
                }
            }

            if ($user->status != 'nonactive') {
                auth()->login($user);
                if (auth()->check()) {
                    $request->session()->regenerate();

                    $this->saveActivity(
                        [
                            'title'       => 'Login',
                            'description' => auth()->user()->name . ' has successfully logged in.'
                        ]
                    );

                    return redirect()->intended($this->redirectTo);
                }
            }
        } catch (\Exception $e) {
            return back()->withErrors(
                [
                    'username' => $e->getMessage(),
                ]
            )->onlyInput('username');
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    /**
     * Log the user out of the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function logout(Request $request)
    {
        $this->guard()->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        if ($response = $this->loggedOut($request)) {
            $request->merge(['module' => 'auth_login']);
            auth()->user()->addLog('Logout berhasil');
            return $response;
        }

        return $request->wantsJson()
            ? new JsonResponse([], 204)
            : redirect('/');
    }

    /**
     * Get the login username to be used by the controller.
     *
     * @return string
     */
    public function username($value = '')
    {
        $login = request()->input('username');
        $field = filter_var($login, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
        request()->merge([$field => $login]);
        return $field;
    }
}
