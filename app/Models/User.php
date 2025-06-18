<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Storage;
use Laravel\Passport\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Database\Eloquent\SoftDeletes;
class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $guarded = [];
    protected $fillable = [
        'name',
        'email',
        'password',
        'username',
        'image',
        'address',
        'gender',
        'bio',
        'specialized',
        'phone'

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function scopeByRole($query, $role)
    {
        return $query->whereHas('roles', function ($query) use ($role) {
            $query->where('name', $role);
        });
    }

    public function getImageAttribute($value)
    {
        // Check if image exists
        if ($value) {
            return url('/public/' . $value);
        } else {
            return url('/public/default-profile.png');
        }
    }

    public function patients(){
        return $this->hasMany(Patient::class);
    }

    public function reports(){
        return $this->hasMany(Report::class, 'doctor_id', 'id');
    }

    public function currentPlan(){
        return $this->hasOne(DoctorPlan::class, 'doctor_id', 'id')->where('status', 'current')->where('end_date_time', '>=', date('Y-m-d H:i:s'));
    }

    public function scopeWithReportAndPatientCount($query)
    {
        return $query->withCount(['reports', 'patients']);
    }

    public function getCreatedAtAttribute($value)
    {
        return \Carbon\Carbon::parse($value)->format('Y-m-d H:i:s');
    }
}
