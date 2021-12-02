<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ServiceHistory extends Model
{

    use HasFactory;

    protected $table = 'service_history';

    /**
     * Get the User that owns the ServiceHistory.
     */
    public function update_by()
    {
        return $this->belongsTo('App\Models\User', 'update_by', 'id')->withTrashed();
    }

    /**
     * Get the Status that owns the ServiceHistory.
     */
    public function status()
    {
        return $this->belongsTo('App\Models\ServiceStatus', 'status', 'status_id');
    }
}
