<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Plan;
use Illuminate\Http\Request;

class PlansController extends Controller
{
    public function list()
    {
        $plans =  Plan::all();
        return $this->successResponse($plans,'Plans fetch successfully!');
    }
}

