<?php

namespace App\Http\Middleware;

use App\Http\Helpers\Common;
use Closure;
use App\Traits\ApiResponse;
use App\Traits\ApiResponseTrait;

class CheckUserInactive
{
    use ApiResponseTrait;
    protected $helper;
    public function __construct()
    {
        $this->helper = new Common();
    }

    public function handle($request, Closure $next)
    {
        // if user inactive wouldn't be able to login
        $user = $this->helper->getUserStatus(auth()->user()->status);

        if ($user == 'Inactive') {
            $prefix = str_replace('/', '', request()->route()->getPrefix());
            if (str_contains($prefix, 'apiv2')) {
                return $this->errorResponse([], __("Inactive"));
            }
            auth()->logout();
            $this->helper->one_time_message('danger', __('Your account is inactivated. Please try again later!'));
            return redirect('/login');
        }
        return $next($request);
    }
}
