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
        // DB::unprepared('
        //     DROP PROCEDURE IF EXISTS `sqrt_root_manual`;
        //     CREATE PROCEDURE sqrt_root_manual(input DOUBLE, user_id DOUBLE)
        //     BEGIN
        //         DECLARE tebak_awal DOUBLE;
        //         DECLARE iterasi DOUBLE;
        //         DECLARE epsilon DOUBLE;
        //         DECLARE start_time TIMESTAMP;
        //         DECLARE end_time TIMESTAMP;
        //         DECLARE duration DOUBLE;
        //         SET tebak_awal = input / 2;
        //         SET iterasi = 0;
        //         SET epsilon = 0.000001;
        //         SET start_time = NOW(6);
        //         WHILE ABS(tebak_awal - iterasi) > epsilon DO
        //             SET iterasi = tebak_awal;
        //             SET tebak_awal = 0.5 * (tebak_awal + (input / tebak_awal));
        //         END WHILE;
        //         SET end_time = NOW(6); 
        //         SET duration = TIMESTAMPDIFF(MICROSECOND, start_time, end_time) / 1000000.0;
        //         INSERT INTO sys_history (`tipe`, `input`,`output`, `duration`, `user_id`, `created_at`, `updated_at`) VALUES ("SP SQL", input, tebak_awal, duration, user_id, NOW(), NOW());
        //     END');

        DB::unprepared("
        DROP FUNCTION IF EXISTS sqrt_root_manual(input DOUBLE PRECISION, user_id DOUBLE PRECISION);
        CREATE OR REPLACE FUNCTION sqrt_root_manual(input DOUBLE PRECISION, user_id DOUBLE PRECISION) RETURNS DOUBLE PRECISION AS $$
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

            start_time := NOW();

            WHILE ABS(tebak_awal - iterasi) > epsilon LOOP
                iterasi := tebak_awal;
                tebak_awal := 0.5 * (tebak_awal + (input / tebak_awal));
            END LOOP;

            end_time := NOW();
            duration = EXTRACT(EPOCH FROM (end_time - start_time)) + 
            (EXTRACT(MICROSECONDS FROM end_time) - EXTRACT(MICROSECONDS FROM start_time)) / 1000000.0;

            INSERT INTO sys_history (tipe, input, output, duration, user_id, created_at, updated_at)
            VALUES ('SP SQL', input, tebak_awal, duration, user_id, NOW(), NOW());

            RETURN tebak_awal;
        END;
        $$ LANGUAGE plpgsql;
        ");
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
