<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            DELIMITER $$
            USE `dbppl`$$
            DROP PROCEDURE IF EXISTS `sqrt_root_manual`$$
            CREATE DEFINER=`root`@`dbppl.cjedq9nnigwi.eu-north-1.rds.amazonaws.com` PROCEDURE `sqrt_root_manual`(IN input DOUBLE)
            BEGIN
                DECLARE tebak_awal DOUBLE;
                DECLARE iterasi DOUBLE;
                DECLARE epsilon DOUBLE;
                DECLARE start_time TIMESTAMP;
                DECLARE end_time TIMESTAMP;
                DECLARE duration DOUBLE;

                SET tebak_awal = input / 2;
                SET iterasi = 0;
                SET epsilon = 0.000001;

                SET start_time = NOW(6) + 0;

                WHILE ABS(tebak_awal - iterasi) > epsilon DO
                    SET iterasi = tebak_awal;
                    SET tebak_awal = 0.5 * (tebak_awal + (input / tebak_awal));
                END WHILE;

                SET end_time = NOW(6) + 0;
                SET duration = end_time - start_time;

                INSERT INTO sys_history (`tipe`, `input`,`output`, `duration`, `created_at`, `updated_at`) VALUES ("SP SQL", input, tebak_awal, duration, NOW(), NOW());
            END$$
            DELIMITER ;
        ');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // 
    }
}
