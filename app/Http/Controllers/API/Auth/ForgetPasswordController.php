<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ForgetPasswordController extends Controller
{
    /**
     * Forget Password
     *
     * @return \Illuminate\Http\Response
     */
    public function forgetPassword(Request $request){
        $validator = Validator::make($request->all(), [
            'email'      => 'required|email',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }


        
    }
}
