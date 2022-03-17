<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\Http\Request;
use Auth;

class PaymentController extends Controller
{

    public function index()
    {
        $patient_id = Auth::guard('patient')->user()->id;
        $payments = Payment::where('patient_id', $patient_id)->get();
        return view('patient.payments.all',compact('payments'));
    }


}
