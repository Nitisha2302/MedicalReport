<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DoctorPlan;
use App\Models\User;
use App\Models\Feedback;
use App\Models\Patient;

use App\Models\Plan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Spatie\Permission\Models\Role;

class DoctorController extends Controller
{
	public function index()
	{
		$data['title']  = 'Doctor Management';
		$data['doctors'] = User::with('currentPlan')->whereNot('id', '1')->paginate(10);

		$data['totalRecords'] = $data['doctors']->total();
        $data['recordsPerPage'] = $data['doctors']->perPage();
		return view('admin.doctor.index', $data);
	}

	public function restore(){
		$data['title'] = 'Doctor Management';
		$data['doctors'] = User::onlyTrashed()->paginate(10);
		$data['totalRecords'] = $data['doctors']->total();
        $data['recordsPerPage'] = $data['doctors']->perPage();
		return view('admin.doctor.restore', $data);
	}

	public function restoreDoctor($id){

		$doctor = User::withTrashed()->where('id', $id)->first();
		$doctor->restore();
		return redirect('/admin/doctors')->with('success', 'Doctor restore successfully!');
	}
	public function create()
	{
		$data['title'] = 'Add New Doctor';
		$data['plans'] = Plan::where('status', 'active')->get();
		return view('admin.doctor.create', $data);
	}

	public function edit($id){
		$data['title'] = 'Edit Doctor';
		$data['doctor'] = User::find($id);
		$data['plans'] = Plan::where('status', 'active')->get();
		return view('admin.doctor.edit', $data);
	}
	public function store(Request $request)
	{
		// dd($request->all());
		$validator = Validator::make($request->all(), [
			'name' => 'required|string',
			'email' => 'required|string|email|unique:users',
			'password' => 'required',
			'confirm_password' => 'required|same:password',
			'username' => 'required|unique:users',
			'phone' => 'required',
			'address' => 'required',
			'specialized' => 'required',
			'gender' => 'required',
		]);

		if ($validator->fails()) {
			return redirect()->back()->withErrors($validator)->withInput();
		}

		$publicImagePath = '';

		if ($request->hasFile('image')) {

			$image = $request->file('image');
			$imageName = time() . uniqid() . '.' . $image->getClientOriginalExtension();
			$publicImagePath = 'doctors/images/' . $imageName;
			$image->move(public_path('doctors/images'), $imageName);
			$publicImagePath;
		}
		$user = new User();
		$user->name = $request->name;
		$user->email = $request->email;
		$user->password = bcrypt($request->password);
		$user->username = $request->username;
		$user->phone = $request->phone;
		$user->address = $request->address;
		$user->specialized = $request->specialized;
		$user->gender = $request->gender;
		$user->bio = $request->bio ? $request->bio : '';
		$user->image = $publicImagePath;

		if ($user->save()) {
			$user->assignRole('user');
			if(isset($request->plan) && !empty($request->plan)){
				$getPlans = Plan::where('id', $request->plan)->get();
				if($getPlans){
					$plan = new DoctorPlan();
					$plan->doctor_id = $user->id;
					$plan->plan_id = $request->plan;
					$plan->status = 'current';
					$plan->start_date_time = date('Y-m-d H:i:s');
					$plan->end_date_time = date('Y-m-d H:i:s', strtotime('+'.$getPlans->validity.' months'));
					$plan->save();
				}
			}
			return redirect('/admin/doctors')->with('success', 'Doctor added successfully!');
		} else {
			return redirect()->back()->withErrors(['error' => 'Something went wrong!']);
		}
	}


	public function update(Request $request, $id)
	{


		$publicImagePath = '';
		if ($request->hasFile('image')) {

			$image = $request->file('image');
			$imageName = time() . uniqid() . '.' . $image->getClientOriginalExtension();
			$publicImagePath = 'doctors/images/' . $imageName;
			$image->move(public_path('doctors/images'), $imageName);
			$publicImagePath;
		}
		$user = User::where('id', $id)->first();
		$user->name = $request->name;
		$user->email = $request->email;
		$user->password = bcrypt($request->password);
		$user->username = $request->username;
		$user->phone = $request->phone;
		$user->address = $request->address;
		$user->specialized = $request->specialized;
		$user->gender = $request->gender;
		$user->bio = $request->bio ? $request->bio : '';
		$user->image = $publicImagePath;

		if ($user->save()) {
			if(isset($request->plan) && !empty($request->plan)){
				$plan = DoctorPlan::where('doctor_id', $user->id)->where('plan_id', $request->plan)->first();
				if(!$plan){
					DoctorPlan::where('doctor_id', $user->id)->update(['status' => 'expired']);
					$getPlans = Plan::where('id', $request->plan)->first();
					if($getPlans){
						$plan = new DoctorPlan();
						$plan->doctor_id = $user->id;
						$plan->plan_id = $request->plan;
						$plan->status = 'current';
						$plan->start_date_time = date('Y-m-d H:i:s');
						$plan->end_date_time = date('Y-m-d H:i:s', strtotime('+'.$getPlans->validity.' months'));
						$plan->save();
					}
				}

			}

			return redirect('/admin/doctors')->with('success', 'Doctor added successfully!');
		} else {
			return redirect()->back()->withErrors(['error' => 'Something went wrong!']);
		}
	}

	public function feedback(Request $request){

		$validator = Validator::make($request->all(), [
			'doctor_id' => 'required',
			'rating' => 'required',
			'comment' => 'required',
		]);
		if ($validator->fails()) {
			return redirect()->back()->withErrors($validator)->withInput();
		}
		$feedback = new Feedback();
		$feedback->doctor_id = $request->doctor_id;
		$feedback->rating = $request->rating;
		$feedback->comment = $request->comment;
		$feedback->save();
		return redirect()->back()->with('success', 'Feedback added successfully!');
	}

	public function destroy($id)
	{
		$doctor = User::find($id);
		$doctor->delete();
		return redirect()->back()->with('success', 'Doctor deleted successfully!');
	}

	public function patient($id){

		$data['title'] = 'Patient List';
		$data['patients'] = Patient::with('doctor')->where('user_id', $id)->get();
		return view('admin.doctor.patient.index', $data);
	}
}
