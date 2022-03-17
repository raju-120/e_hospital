<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
class HistoryController extends Controller
{
    public function index(){

        $doctor_id = Auth::guard('doctor')->user()->id;
        $appointments = DB::table('appointments')->where('doctor_id',$doctor_id)->get();



        return view('doctor.histories',['appointments'=>$appointments]);

    }
}
