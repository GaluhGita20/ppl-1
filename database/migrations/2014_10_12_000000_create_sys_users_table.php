<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSysUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'sys_users',
            function (Blueprint $table) {
                $table->id();
                $table->string('status')->default('active')->index();
                $table->string('name');
                $table->string('email')->unique();
                $table->string('username')->unique();
                $table->timestamp('email_verified_at')->nullable();
                $table->timestamp('last_login')->nullable();
                $table->string('password');
                $table->string('image')->nullable();
                $table->string('address', 4096)->nullable();
                $table->string('phone')->nullable();
                $table->rememberToken();
                $table->commonFields();
            }
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sys_users');
    }
}
