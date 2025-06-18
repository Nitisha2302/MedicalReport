<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Patient extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = [];
    protected $fillable = [
        'name',
        'email',
        'image',
        'phone',
        'user_id',
        'date_of_birth',
        'address',
        'gender',
        'blood_group',
        'height',
        'weight',
    ];


    public function getNameAttribute($value)
    {
        return ucfirst($value);
    }

    public function doctor(){

        return $this->belongsTo(User::class, 'user_id');

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

}

