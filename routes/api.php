<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\PatientController;
use App\Http\Controllers\Api\DoctorController;
use App\Http\Controllers\Api\PlansController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::post('login', [AuthController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);
Route::post('password/email', [AuthController::class, 'sendResetLinkEmail'])->name('password.email');

Route::group(['middleware' => ['auth:api']], function () {

    Route::post('logout', [AuthController::class, 'logout']);
    Route::get('dashboard', [DoctorController::class, 'index']);
    Route::get('search', [DoctorController::class, 'search']);

    Route::group(['prefix' => 'patient'], function () {
        Route::get('list', [PatientController::class, 'list']);
        Route::get('/{id}', [PatientController::class, 'getPatient']);
        Route::post('create', [PatientController::class, 'create']);
    });

    Route::group(['prefix' => 'plan'], function () {
        Route::get('list', [PlansController::class, 'list']);
    });

    Route::group(['prefix' => 'doctor'], function () {
        Route::get('profile', [DoctorController::class, 'profile']);
        Route::post('update', [DoctorController::class, 'update']);
        Route::post('feedback', [DoctorController::class, 'feedback']);
    });

    Route::group(['prefix' => 'report'], function () {
        Route::get('list', [DoctorController::class, 'listReport']);
        Route::get('detail/{id}', [DoctorController::class, 'showReport']);
        Route::post('create', [DoctorController::class, 'createReport']);
    });
});
