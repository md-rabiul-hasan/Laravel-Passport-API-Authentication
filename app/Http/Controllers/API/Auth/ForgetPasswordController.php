<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\API\BaseController;
use App\Jobs\PasswordResetMailSendJob;
use App\Mail\PasswordResetMail;
use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class ForgetPasswordController extends BaseController
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

        $email = $request->input('email');

        $user = User::where('email', $email)->first();
        if($user){
            $email = $user->email;
            $reset_token = $this->generateResetToken($email);

            $success = [
                "reset_token" => $reset_token 
            ];
       
            return $this->sendResponse('Password reset mail sent.', $success);

        }else{
            return $this->sendError('This email not registration yet', [], 404); 
        }
        
    }


    protected function generateResetToken($email){
        $token = Str::random(20);
        $password_reset = DB::table('password_resets')->where('email', $email)->first();
        if($password_reset){
            DB::table('password_resets')->where('email', $email)->update([
                "token" => $token
            ]);
        }else{
            DB::table('password_resets')->insert([
                "email" => $email,
                "token" => $token
            ]);
        }
        $this->sendPasswordResetMail($email, $token);
        return $token;
    }

    protected function sendPasswordResetMail($email, $token){
        $details = [
            'email' => $email,
            'subject' => 'Password Reset',
            'url' => asset("/api/v1/reset-password/$token")
        ];
        dispatch(new PasswordResetMailSendJob($details));
    }

}
