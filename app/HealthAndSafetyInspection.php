<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HealthAndSafetyInspection extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'health_and_safety_inspections';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['inspection_timing', 'invitation_status', 'review', 'upload_doc'];

    
}
