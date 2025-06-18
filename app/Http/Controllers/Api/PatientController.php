<?php

namespace App\Http\Controllers\Api;

use App\Models\Patient;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\Controller;

class PatientController extends Controller
{
    //
    public function create(Request $request) {

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|max:255',
            'phone' => 'required|string|max:20',
            'date_of_birth' => 'nullable|date',
            'address' => 'nullable|string',
            'gender' => 'nullable|string|in:male,female,other,Male,Female,Other',
            'blood_group' => 'nullable|string|max:10',
            'height' => 'nullable|string|max:10',
            'weight' => 'nullable|string|max:10',
            'image' => 'nullable|image|max:2048', // Assuming image upload
        ]);

        if ($validator->fails()) {
			return $this->errorResponse('validation_error',$validator->errors(), 200 );
		}
        $date_of_birth = date('Y-m-d', strtotime($request->date_of_birth));

        $patient = new Patient([
			'name' => $request->name,
			'email' => $request->email,
			'phone' => $request->phone,
            'date_of_birth' => $date_of_birth ?? null,
			'address' => $request->address,
            'gender' => $request->gender,
			'blood_group' => $request->blood_group,
			'height' => $request->height ? $request->height : '',
			'weight' => $request->weight ? $request->weight : '',
            'user_id' => Auth::id(),
            'reference_by' => $request->reference_by ?? ''
		]);

        if ($request->hasFile('image')) {
            if ($patient->image) {
                $relativePath = str_replace(url('/public/'), '', $patient->image);
                $previousImagePath = public_path($relativePath);
                if (File::exists($previousImagePath)) {
                    File::delete($previousImagePath);
                }
            }

            $image = $request->file('image');
            $imageName = time().uniqid() . '.' .$image->getClientOriginalExtension();
            $publicImagePath = 'patients/images/' . $imageName;
            $image->move(public_path('patients/images'), $imageName);

            $patient->image = $publicImagePath;
        }


        if ($patient->save()) {
			return $this->successResponse($patient,'Patient created successfully!');
		} else {
			return $this->errorResponse('validation error',"Provide proper details", 200 );
		}
    }

    public function list(Request $request) {

        $user_id = Auth::id();
        $perPage = 10;

        $patients = Patient::where('user_id', $user_id)->orderBy('id','desc')->paginate($perPage);
        $responseData = [
            'success' => true,
            "message"=> "Patients fetched successfully!",
            'data' => $patients->items(),
            'total' => $patients->total(),
            'per_page' => $patients->perPage(),
        ];
        return $responseData;
    }

    public function getPatient($id){

        $user_id = Auth::id();
        $patient = Patient::where('user_id', $user_id)->find($id);
        return $this->successResponse($patient, 'Patient fetch successfully!');
    }
}
