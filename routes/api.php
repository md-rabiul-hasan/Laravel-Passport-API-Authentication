<?php

use App\Http\Controllers\API\Auth\ForgetPasswordController;
use App\Http\Controllers\API\Auth\LoginController;
use App\Http\Controllers\API\Auth\PasswordResetController;
use App\Http\Controllers\API\Auth\RegistrationController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'v1'], function(){

    Route::group(['prefix' => 'auth', 'namespace' => 'API\Auth'], function(){
        Route::post('registration', [RegistrationController::class, 'registration']);
        Route::post('login', [LoginController::class, 'login']);
        Route::post('forget-password', [ForgetPasswordController::class, 'forgetPassword']);
        Route::post('reset-password/{token}', [PasswordResetController::class, 'passwordReset']);
    });

});