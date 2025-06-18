<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Patient;
use App\Models\Report;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
class PatientController extends Controller
{
    public function index(){
        $data['title']  = 'Patient Management';
        $data['patients'] = Patient::all();
        return view('admin.patient.index', $data);
    }

    public function edit($id){
        $data['title'] = 'Edit Patient';
        $data['patient'] = Patient::with('doctor')->find($id);
        return view('admin.patient.edit', $data);
    }

    public function update(Request $request , $id){

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|max:255',
            'phone' => 'required|string|max:20',
            'date_of_birth' => 'nullable|date',
            'address' => 'nullable|string',
            'gender' => 'nullable|string|in:male,female,other',
            'blood_group' => 'nullable|string|max:10',
            'height' => 'nullable|string|max:10',
            'weight' => 'nullable|string|max:10',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $patient = Patient::find($id);
        $patient->name = $request->name ?? $patient->name;
        $patient->email = $request->email ?? $patient->email;
        $patient->phone = $request->phone ??    $patient->phone;
        $patient->date_of_birth = $request->date_of_birth ?? $patient->date_of_birth;
        $patient->address = $request->address ??    $patient->address;
        $patient->gender = $request->gender ??    $patient->gender;
        $patient->blood_group = $request->blood_group ?? $patient->blood_group;
        $patient->height = $request->height ??    $patient->height;
        $patient->weight = $request->weight ??    $patient->weight;
        $patient->image = $request->image ??    $patient->image;
        $patient->save();
        return redirect()->route('admin.patients.index')->with('success', 'Patient updated successfully!');
    }

    public function reportList($id){

        $data['title'] = 'Patient Report';
        $data['reports'] = Report::with('doctor', 'patient')->where('patient_id', $id)->get();
        return view('admin.report.index', $data);

    }
}
