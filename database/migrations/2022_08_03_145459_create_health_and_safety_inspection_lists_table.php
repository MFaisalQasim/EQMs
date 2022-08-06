<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateHealthAndSafetyInspectionListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('health_and_safety_inspection_lists', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('health_and_safety_inspections_id')->nullable();
            $table->string('list_item')->nullable();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('health_and_safety_inspection_lists');
    }
}
