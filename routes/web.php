<?php

use App\Models\Master\Org\OrgStruct;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'Dashboard\DashboardController@index')->name('index');
Route::get('posts', function () {
    return response()->json(['message' => 'Ini adalah contoh rute API GET'], 200);
});
Route::post('/grid', 'Dashboard\DashboardController@grid')->name('dashboard.grid');
Route::post('result', 'Dashboard\DashboardController@result')->name('dashboard.result');

