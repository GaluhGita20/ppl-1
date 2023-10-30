<?php

namespace App\Http\Middleware;

use App\Models\Auth\User;
use App\Models\Conducting\Kka\KkaSampleDetail;
use App\Models\Master\Aspect\Aspect;
use App\Models\Preparation\Apm\ApmDetail;
use App\Models\Preparation\Assignment\Assignment;
use Closure;
use Illuminate\Http\Request;

class VerifyDatabase
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (auth()->check()) {
            $this->checkData();
        }
        return $next($request);
    }

    /**
     * Handle existing data 
     * Jika ada perubahan struktur table pada database.
     */
    public function checkData()
    {
        // Terjadi perubahan table sys_users pada tanggal 2022-06-16
        $records = User::whereNull('username')->get();
        foreach ($records as $record) {
            $record->fill([
                'username' => str_replace(['.','_','-'], '', explode('@',$record->email)[0]),
                'status' => 'active',
            ]);
            $record->save();
        }
    }
}
