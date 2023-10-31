<?php

namespace App\Models\Globals;

use App\Models\Model;
use Carbon\Carbon;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;

class History extends Model
{
    protected $table = 'sys_history';

    protected $fillable = [
        'tipe',
        'input',
        'output',
        'duration',
        'user_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    /** SCOPE **/
    public function scopeGrid($query)
    {
        return $query->latest();
    }

    public function scopeGridByUser($query)
    {
        return $query->where('user_id', auth()->user()->id)->latest();
    }

    public function scopeFilters($query)
    {
        return $query;
    }

}
