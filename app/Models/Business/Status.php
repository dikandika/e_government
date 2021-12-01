<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    protected $table = 'Status';
    public $timestamps = false; 

    public function service_history()
    {
        return $this->hasMany('App\Models\Business\ServiceHistory');
    }
}