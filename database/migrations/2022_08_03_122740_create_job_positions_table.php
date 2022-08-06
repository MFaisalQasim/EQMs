<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateJobPositionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_positions', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('Job_title')->nullable();
            $table->longText('Purpose')->nullable();
            $table->string('Answerable_to')->nullable();
            $table->string('Responsible_for')->nullable();
            $table->longText('Skills')->nullable();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('job_positions');
    }
}
