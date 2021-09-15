<?php

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


// Specify in CSS :
//     /*
//     font-family: 'Montserrat', sans-serif;
//     font-family: 'Roboto Slab', serif;
//     font-family: 'Roboto Mono', monospace;
//     font-family: 'Nunito', sans-serif;
//     font-family: 'Noto Serif', serif;
//     font-family: 'Lobster', cursive;
//     font-family: 'Dancing Script', cursive;
//     font-family: 'Patrick Hand', cursive;
//     font-family: 'Itim', cursive;
//     font-family: 'Saira', sans-serif;
//     */
    
//     --> có thể tự chọn ở https://fonts.google.com/?subset=vietnamese <--
