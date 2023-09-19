<?php

namespace App\Http\Middleware;

use App\Models\Followup\FollowupReg;
use App\Models\Master\Survey\Survey;
use App\Models\Master\Survey\SurveyStatement;
use App\Models\Survey\SurveyReg;
use App\Models\Survey\SurveyRegUser;
use App\Models\Survey\SurveyRegUserDetail;
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
        // Big update migration : 2022_08_14_213012_add_column_to_trans_followup_regs_items.php
        $records = FollowupReg::where('created_at', '<', '2022-08-15')->get();
        foreach ($records as $record) {
            $record->monitor()->delete();
            $record->items()->delete();
            $record->delete();
        }
        // Big update migration : 2022_08_15_022856_create_ref_survey_categories_table.php
        SurveyRegUserDetail::where('created_at', '<', '2022-08-15')->delete();
        SurveyRegUser::where('created_at', '<', '2022-08-15')->delete();
        SurveyReg::where('created_at', '<', '2022-08-15')->delete();
        SurveyStatement::where('created_at', '<', '2022-08-15')->delete();
        Survey::where('created_at', '<', '2022-08-15')->delete();
    }
}
