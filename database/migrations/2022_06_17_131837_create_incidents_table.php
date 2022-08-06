<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateIncidentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('incidents', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->softDeletes();
            $table->string('incident_reporter')->nullable();
            $table->dateTime('date')->nullable();
            $table->longText('incident_description')->nullable();
            $table->longText('investigation')->nullable();
            $table->string('corrective_actions')->nullable();
            $table->text('corrective_incident')->nullable();
            $table->date('review_date')->nullable();
            $table->string('responce')->nullable();
            $table->boolean('check_status')->nullable();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('incidents');
    }
}
