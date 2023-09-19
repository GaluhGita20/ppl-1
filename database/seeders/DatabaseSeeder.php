<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(MenuFlowSeeder::class);
        $this->call(OrgStructSeeder::class);
        $this->call(PositionSeeder::class);
        $this->call(PermissionSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(GeoSeeder::class);
        // $this->call(ICTTypesSeeder::class);
        $this->call(ICTObjectSeeder::class);
        $this->call(LetterSeeder::class);
        $this->call(CutOffSeeder::class);
        $this->call(FeeSeeder::class);
        $this->call(TrainingSeeder::class);
        $this->call(CategorySurveySeeder::class);
        $this->call(AuditorExternalSeeder::class);
        $this->call(MenuFlowApprovalSeeder::class);
        $this->call(BankSeeder::class);
        $this->call(MasterSeeder::class);
        $this->call(AuditRatingSeeder::class);
        $this->call(AuditProcedureSeeder::class);
        $this->call(LevelTemuanSeeder::class);
    }
}
