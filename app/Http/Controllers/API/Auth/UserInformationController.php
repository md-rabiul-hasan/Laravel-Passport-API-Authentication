<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\API\BaseController;

class UserInformationController extends BaseController
{
    public function userInfo(){
        
		
        $success = [
            "name" => Auth::user()->name, 
            "token" => "" 
        ];
   
        return $this->sendResponse('User Fetch successfully.', $success);
    }
}
