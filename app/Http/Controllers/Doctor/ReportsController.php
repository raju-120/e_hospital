<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
class ReportsController extends Controller
{
    public function index(){

       $doctor_id = Auth::guard('doctor')->user()->id;
        $appointments = DB::table('appointments')->where('doctor_id',$doctor_id)->where('status','Completed')->get();



        return view('doctor.reports.all',['appointments'=>$appointments]);

    }
}
