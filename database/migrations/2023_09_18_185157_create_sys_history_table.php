<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSysHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sys_history', function (Blueprint $table) {
            $table->id();
            $table->string('tipe');
            $table->double('input', 32, 17)->nullable();
            $table->double('output', 32, 17)->nullable();
            $table->double('duration', 32, 17)->nullable();
            $table->unsignedBigInteger('user_id');
            $table->commonFields();

            $table->foreign('user_id')->references('id')->on('sys_users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sys_history');
    }
}
