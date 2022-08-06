<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddTraining extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'add_trainings';

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
    protected $fillable = ['start_date', 'end_date', 'Location_Or_Link', 'MediaFiles'];

    
}
