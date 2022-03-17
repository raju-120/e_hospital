<?php

namespace App\Http\Controllers\Patient;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\Doctor;
use App\Models\Department;
use App\Models\Appointment;
use Illuminate\Support\Facades\DB;
use Auth;

class HistoryController extends Controller
{

public function viewhistory()
{
     $patient_id = Auth::guard('patient')->user()->id;
    $appointments = Appointment::where('patient_id', $patient_id)->get();
    return view('patient.payments.all',compact('payments'));

}


}
