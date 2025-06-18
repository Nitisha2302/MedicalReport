<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Password;
class AuthController extends Controller
{
	/**
	 * Create user
	 *
	 * @param  [string] name
	 * @param  [string] email
	 * @param  [string] password
	 * @param  [string] password_confirmation
	 * @return [string] message
	 */
	public function register(Request $request)
	{

		$validator = Validator::make($request->all(), [
			'name' => 'required|string',
			'email' => 'required|string|email|unique:users',
			'password' => 'required',
			'c_password' => 'required|same:password',
			'username' => 'required|unique:users',
			'phone' => 'required',
			'address' => 'required',
			'specialized' => 'required',
			'gender' => 'required',
		]);

		if ($validator->fails()) {
			return $this->errorResponse('validation_error',$validator->errors(), 422 );
		}

		$user = new User([
			'name' => $request->name,
			'email' => $request->email,
			'password' => bcrypt($request->password),
			'username' => $request->username,
			'phone' => $request->phone,
			'address' => $request->address,
			'specialized' => $request->specialized,
			'gender' => $request->gender,
			'bio' => $request->bio ? $request->bio : '',
		]);

		$user->assignRole('user');
		if ($user->save()) {
			return $this->successResponse($user,'User created successfully!');
		} else {
			return $this->errorResponse('validation error',"Provide proper details", 422 );
		}
	}

	public function login(Request $request){

		$validator = Validator::make($request->all(), [
			'username' => 'required_without:email',
        	'email' => 'required_without:username|string|email',
			'password' => 'required'
		]);

		if ($validator->fails()) {
			return $this->errorResponse('validation_error',$validator->errors(), 422 );
		}

		$credentials = $request->only('password');

		if (isset($request->email) && !empty($request->email)) {
			$credentials['email'] = $request->email;
		} else {
			$credentials['username'] = $request->username;
		}

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
			if($user->hasRole('user')){
				$token = $user->createToken($user->name)->accessToken;
				$user->load('currentPlan.plan');
				$user['role'] = $user->roles->first()->name;
				unset($user->password);
				unset($user->roles);
				$user['token'] = $token;

				return $this->successResponse($user,'User login successfully!');
			}
        } else {
			return $this->errorResponse('login_error',"Invalid login details", 422 );
        }
	}

	public function sendResetLinkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        try {
            $status = Password::sendResetLink(
                $request->only('email')
            );

            if ($status === Password::RESET_LINK_SENT) {
				return $this->successResponse([],'Password reset link sent to your email');
            } else {
				return $this->errorResponse('login_error',"Unable to send reset link. Please try again later.", 200 );
            }
        } catch (\Exception $e) {
            Log::error('Password reset email sending failed: ' . $e->getMessage());
			return $this->errorResponse('login_error',"An unexpected error occurred. Please try again later.", 200 );

        }
    }

	public function logout(Request $request){

		$token = $request->user()->token();
		$token->revoke();
		$user = Auth::user();
		$user['token'] = null;
		return $this->successResponse($user,'User logout successfully!');
	}
}
