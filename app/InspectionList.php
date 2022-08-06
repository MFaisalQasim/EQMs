<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InspectionList extends Model
{
    protected $table = 'inspection_lists';

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
    protected $fillable = ['areas_inspected', 'health_and_safety_inspections_id'];
    
    // public function getInspectionList() 
    // {
    // return $this->belongsTo(HealthAndSafetyInspectionList::class, 'amunities_id');
    // }
}
