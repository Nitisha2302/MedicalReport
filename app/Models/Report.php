<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Report extends Model
{
    use HasFactory, SoftDeletes;

    public function getFileAttribute($value)
    {
        return url('/public/'.$value);
    }

    public function doctor(){
        return $this->belongsTo(User::class,'doctor_id');
    }

    public function patient(){
        return $this->belongsTo(Patient::class,'patient_id');
    }
}
