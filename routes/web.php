<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\DoctorController;
use App\Http\Controllers\Admin\PatientController;
use App\Http\Controllers\Admin\PlansController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\ResetPasswordController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
})->name('/');


Route::get('password/reset/{token}', [ResetPasswordController::class,'showResetForm'])->name('password.reset');
Route::post('password/reset', [ResetPasswordController::class, 'reset'])->name('password.reset.confirm');
Route::get('password/success', [ResetPasswordController::class, 'success'])->name('password.success');


Route::middleware('guest')->group(function () {
    Route::get('login', [LoginController::class,'loginForm'])->name('login');
    Route::post('login', [LoginController::class,'login'])->name('login-post');
});


// Admin only routes
Route::prefix('admin')->middleware('auth:admin')->name('admin.')->group(function () {
    Route::get('logout', [LoginController::class, 'logout'])->name('logout');
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    // Doctor Routes
    Route::get('doctors', [DoctorController::class, 'index'])->name('doctors');
    Route::get('doctor/restore', [DoctorController::class, 'restore'])->name('doctor.restore');
    Route::get('doctor/restore/{id}', [DoctorController::class, 'restoreDoctor'])->name('doctor.restore.post');
    Route::get('doctor-create', [DoctorController::class, 'create'])->name('doctor.create');
    Route::post('doctor-store', [DoctorController::class, 'store'])->name('doctor.store');
    Route::post('doctor-update/{id}', [DoctorController::class, 'update'])->name('doctor.update');
    Route::get('doctor-edit/{id}', [DoctorController::class, 'edit'])->name('doctor.edit');
    Route::get('delete/{id}', [DoctorController::class, 'destroy'])->name('doctor.delete');
    Route::get('doctor/patient/{id}', [DoctorController::class, 'patient'])->name('doctor.patient');

    // Patient Routes
    Route::get('patients', [PatientController::class, 'index'])->name('patients');
    // Route::get('doctor-create', [DoctorController::class, 'create'])->name('doctor.create');
    // Route::post('doctor-store', [DoctorController::class, 'store'])->name('doctor.store');
    Route::get('patient-edit/{id}', [PatientController::class, 'edit'])->name('patient.edit');
    Route::get('patient-update/{id}', [PatientController::class, 'update'])->name('patient.update');

    Route::group(['prefix' => 'report'], function () {
        Route::get('list/{id}', [PatientController::class, 'reportList'])->name('report.list');
    });

    Route::group(['prefix' => 'plans'], function () {
        Route::get('/', [PlansController::class, 'index'])->name('plans.list');
        Route::get('create', [PlansController::class, 'create'])->name('plans.create');
        Route::post('store', [PlansController::class, 'store'])->name('plans.store');
        Route::get('edit/{id}', [PlansController::class, 'edit'])->name('plans.edit');
        Route::post('update/{id}', [PlansController::class, 'update'])->name('plans.update');
        Route::get('delete/{id}', [PlansController::class, 'destroy'])->name('plans.destroy');
    });



});
