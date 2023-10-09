<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use Illuminate\Support\Facades\DB;

class CreateStoredProcedureSqrtManual extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared('
        CREATE OR REPLACE FUNCTION sqrt_root_manual(input DOUBLE PRECISION) RETURNS DOUBLE PRECISION AS $$
        DECLARE
            tebak_awal DOUBLE PRECISION;
            iterasi DOUBLE PRECISION;
            epsilon DOUBLE PRECISION;
            start_time TIMESTAMP;
            end_time TIMESTAMP;
            duration DOUBLE PRECISION;
        BEGIN
            tebak_awal := input / 2;
            iterasi := 0;
            epsilon := 0.000001;
        
            start_time := NOW() AT TIME ZONE "UTC";
        
            WHILE ABS(tebak_awal - iterasi) > epsilon LOOP
                iterasi := tebak_awal;
                tebak_awal := 0.5 * (tebak_awal + (input / tebak_awal));
            END LOOP;
        
            end_time := NOW() AT TIME ZONE "UTC";
            duration := EXTRACT(EPOCH FROM (end_time - start_time));
        
            INSERT INTO sys_history (tipe, input, output, duration, created_at, updated_at)
            VALUES ("SP SQL", input, tebak_awal, duration, NOW() AT TIME ZONE "UTC", NOW() AT TIME ZONE "UTC");
        
            RETURN tebak_awal;
        END;
        $$ LANGUAGE plpgsql;
        ');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::unprepared('
            DROP PROCEDURE IF EXISTS `sqrt_root_manual`;
        ');
    }
}
