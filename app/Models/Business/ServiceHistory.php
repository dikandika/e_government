<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ServiceHistory extends Model
{

    use HasFactory;

    protected $table = 'notes';

    /**
     * Get the User that owns the ServiceHistory.
     */
    public function update_by()
    {
        return $this->belongsTo('App\Models\User', 'UpdateBy')->withTrashed();
    }

    /**
     * Get the Status that owns the ServiceHistory.
     */
    public function status()
    {
        return $this->belongsTo('App\Models\business\Status', 'Status');
    }
}
