<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateHealthAndSafetyInspectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('health_and_safety_inspections', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->date('inspection_timing')->nullable();
            $table->string('invitation_status')->nullable();
            $table->integer('review')->nullable();
            $table->string('upload_doc')->nullable();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('health_and_safety_inspections');
    }
}
