<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\SqrtController;

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

Route::post('square-root', [SqrtController::class, 'handleSqrt'])->name('api.sqrt');

Route::get('posts', function () {
    return response()->json(['message' => 'Ini adalah contoh rute API GET'], 200);
});
