<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServiceStatus extends Model
{
    protected $table = 'service_status';
    public $timestamps = false; 

    public function service_history()
    {
        return $this->hasMany('App\Models\ServiceHistory');
    }
}