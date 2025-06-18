<?php

namespace App\Http\Controllers\Api;

use App\Models\Patient;
use App\Models\User;
use App\Models\Report;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class DoctorController extends Controller
{

    public function index()
    {
        $user = User::withReportAndPatientCount()->where('id', Auth::id())->get();

        return $this->successResponse($user, 'User fetch successfully!');
    }
    public function list(Request $request)
    {
        $user_id = Auth::id();
        $patient = Patient::where('user_id', $user_id)->get();
        return $this->successResponse($patient, 'Patients fetch successfully!');
    }

    public function profile()
    {
        $doctor = Auth::user();
        return $this->successResponse($doctor, 'Doctor fetch successfully!');
    }

    public function update(Request $request)
    {
        $user = User::findOrFail(Auth::id());

        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users,email,' . $user->id,
            'username' => 'required|unique:users,username,' . $user->id,
            'phone' => 'required',
            'address' => 'required',
            'specialized' => 'required',
            'gender' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->errorResponse('validation_error', $validator->errors(), 200);
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->username = $request->username;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->specialized = $request->specialized;
        $user->gender = $request->gender;
        $user->bio = $request->bio ?? '';

        if ($request->hasFile('image')) {
            if ($user->image) {
                $relativePath = str_replace(url('/public/'), '', $user->image);
                $previousImagePath = public_path($relativePath);
                if (File::exists($previousImagePath)) {
                    File::delete($previousImagePath);
                }
            }

            $image = $request->file('image');
            $imageName = time() . uniqid() . '.' . $image->getClientOriginalExtension();
            $publicImagePath = 'doctors/images/' . $imageName;
            $image->move(public_path('doctors/images'), $imageName);

            $user->image = $publicImagePath;
        }

        if ($user->save()) {
            return $this->successResponse($user, 'User profile updated successfully!');
        } else {
            return $this->errorResponse('validation_error', "Failed to update user profile.", 200);
        }
    }

    //report create

    public function createReport(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'patient_id' => 'required|exists:patients,id',
            'doctor_id' => 'required|exists:users,id',
            'unique_id' => 'required|unique:reports,unique_id',
            'file' => 'required| mimes:pdf',
        ]);

        if ($validator->fails()) {
            return $this->errorResponse('validation_error', $validator->errors(), 200);
        }

        $report = new Report();
        $report->patient_id = $request->patient_id;
        $report->doctor_id = $request->doctor_id;
        $report->unique_id = $request->unique_id;
        if ($request->hasFile('file')) {

            $image = $request->file('file');
            $imageName = time() . uniqid() . '.' . $image->getClientOriginalExtension();
            $publicImagePath = 'reports/pdf/' . $imageName;
            $image->move(public_path('reports/pdf'), $imageName);

            $report->file = $publicImagePath;
        }
        $report->save();
        return $this->successResponse($report, 'Report created successfully!');
    }

    public function listReport(Request $request)
    {
        $user_id = Auth::id();
        $reports = Report::where('doctor_id', $user_id)->get();
        return $this->successResponse($reports, 'Reports fetch successfully!');
    }

    public function showReport($id)
    {
        $report = Report::find($id);
        return $this->successResponse($report, 'Report fetch successfully!');
    }

    public function search(Request $request)
    {
        $user_id = Auth::id();
        $reports = Report::where('doctor_id', $user_id)
            ->where('unique_id', 'like', '%' . $request->search . '%')
            ->get();

        // Search in patients
        $patients = Patient::where('user_id', $user_id)
            ->where('name', 'like', '%' . $request->search . '%')
            ->get();

        // Combine search results
        $searchResults = [
            'reports' => $reports,
            'patients' => $patients,
        ];

        return $this->successResponse($searchResults, 'Search results fetched successfully!');
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
        return $this->successResponse($feedback, 'Feedback added successfully!');
	}
}
