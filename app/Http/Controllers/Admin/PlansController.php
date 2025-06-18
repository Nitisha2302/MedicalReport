<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Plan;
use Illuminate\Http\Request;

class PlansController extends Controller
{
    public function index()
    {
        $data['title'] = 'Plans Management';
        $data['plans'] =  Plan::all();
        return view('admin.plans.index', $data);
    }

    public function create(){
        $data['title'] = 'Add New Plan';
        return view('admin.plans.create', $data);
    }

    public function  store(Request $request){
        $request->validate([
            'name' => 'required',
            'price' => 'required',
            'validity' => 'required',
        ]);

        $plan = new Plan();
        $plan->name = $request->name;
        $plan->price = $request->price;
        $plan->status = 'active';
        $plan->validity = $request->validity;
        $plan->save();
        return redirect()->route('admin.plans.list')->with('success', 'Plan added successfully!');
    }

    public function edit($id){
        $data['title'] = 'Edit Plan';
        $data['plan'] =  Plan::find($id);
        return view('admin.plans.edit', $data);
    }

    public function  update(Request $request, $id){
        $request->validate([
            'name' => 'required',
            'price' => 'required',
        ]);

        $plan = Plan::find($id);
        $plan->name = $request->name ?? $plan->name;
        $plan->price = $request->price ??  $plan->price;
        $plan->validity = $request->validity ??  $plan->validity;
        $plan->save();
        return redirect()->route('admin.plans.list')->with('success', 'Plan updated successfully!');
    }

    public function  destroy($id){
        $plan = Plan::find($id);
        $plan->delete();
        return redirect()->route('admin.plans.list')->with('success', 'Plan deleted successfully!');
    }
}

