<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    public $timestamps=false;

    public function patient()
    {
        $this->belongsTo('App\Models\Patient');
    }
    public function appointment()
    {
        $this->belongsTo('App\Models\Appointment');
    }
}
