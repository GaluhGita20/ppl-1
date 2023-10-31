<?php

use App\Http\Controllers\Auth\LoginController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File as FacadesFile;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;


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

Route::get('lang/change', [Controller::class, 'change'])->name('changeLang');
Auth::routes();
Route::get('logout', [LoginController::class, 'logout']);

Route::middleware('auth')->group(function () {
    Route::get(
        'auth/check',
        function () {
            return response()->json(
                [
                    'data'  => auth()->check()
                ]
            );
        }
    );
    Route::redirect('/home', '/dashboard');
    Route::redirect('/', '/dashboard');
    Route::get('/dashboard', 'Dashboard\DashboardController@index')->name('dashboard.index');
    Route::get('/sqrt-root', 'Dashboard\DashboardController@sqrtRoot')->name('dashboard.sqrt-root');
    Route::post('/grid', 'Dashboard\DashboardController@grid')->name('dashboard.grid');
    Route::post('result', 'Dashboard\DashboardController@result')->name('dashboard.result');

});

Route::get('posts', function () {
    return response()->json(['message' => 'Ini adalah contoh rute API GET'], 200);
});


