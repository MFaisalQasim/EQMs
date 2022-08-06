<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobPosition extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'job_positions';

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
    protected $fillable = ['Job_title', 'Purpose', 'Answerable_to', 'Responsible_for', 'Skills'];

    
}
