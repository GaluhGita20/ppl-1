<?php

namespace App\Models\Traits;

use App\Models\Auth\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Schema;

trait RaidModel
{
    public static function boot()
    {
        parent::boot();

        if (auth()->check()) {
            if (Schema::hasColumn(with(new static)->getTable(), 'updated_by')) {
                static::saving(
                    function ($table) {
                        $table->updated_by = auth()->id();
                    }
                );
            }

            if (Schema::hasColumn(with(new static)->getTable(), 'created_by')) {
                static::creating(
                    function ($table) {
                        $table->updated_by = null;
                        $table->updated_at = null;
                        $table->created_by = auth()->id();
                    }
                );
            }
        }

        // insert to log
        if ($log_table = (new static)->log_table) {
            static::saved(
                function ($table) {
                    $log = $table->attributes;
                    $log[$table->log_table_fk] = $log['id'];
                    unset($log['id']);

                    \DB::table($table->log_table)->insert($log);
                }
            );

            static::deleting(
                function ($table) {
                    $log = $table->attributes;
                    $log[$table->log_table_fk] = $log['id'];
                    unset($log['id']);

                    \DB::table($table->log_table)->insert($log);
                }
            );
        }
    }

    /*-----------*/
    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function updater()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function entryBy()
    {
        return $this->creator ? $this->creator->name : '[System]';
    }

    public function creatorName()
    {
        if ($this->updater) {
            return $this->updater->name;
        }
        return isset($this->creator) ? $this->creator->name : '[System]';
    }

    public function updaterName()
    {
        return $this->updater ? $this->updater->name : '[System]';
    }

    public function creationDate()
    {
        $date = $this->updated_at ?: $this->created_at;
        return Carbon::parse($date)->translatedFormat('d M Y, H:i');
        // return Carbon::parse($date)->diffForHumans();
    }

    public function createdByRaw()
    {
        return '<div data-order="' . ($this->updated_at ?: $this->created_at) . '" class="text-left make-td-py-0">
                    <small>
                        <div class="text-nowrap">
                            <i data-toggle="tooltip" title="' . \Str::title($this->creatorName()) . '"
                                class="fa fa-user fa-fw fa-lg mr-2"></i>
                            ' . \Str::title($this->creatorName()) . '
                        </div>
                        <div class="text-nowrap">
                            <i data-toggle="tooltip" title="' . $this->created_at->format('d M Y, H:i') . '"
                                class="fa fa-clock fa-fw fa-lg mr-2"></i>
                            ' . $this->creationDate() . '
                        </div>
                    </small>
                </div>';
    }

    // DataTables
    public function scopeDefaultOrderBy($query, $column = 'created_at', $direction = 'desc')
    {
        return $query->when(
            !isset(request()->order[0]['column']),
            function ($q) use ($column, $direction) {
                $q->orderBy($column, $direction);
            }
        );
    }

    public function scopeFilterBy($query, $column, $operator = 'LIKE')
    {
        if (is_array($column)) {
            foreach ($column as $col) {
                $query->filterBy($col, $operator);
            }
            return $query;
        } else {
            $post = request()->post($column);
            $keyword = ($operator === 'LIKE') ? '%' . $post . '%' : $post;
            return $query->when(
                $post,
                function ($q) use ($operator, $column, $keyword) {
                    $q->where($column, $operator, $keyword);
                }
            );
        }
    }

    public function scopeDtGet($query)
    {
        if (request()->has('order')) {
            return $query->get();
        }
        return $query
            ->orderBy('created_at', 'DESC')
            ->orderBy('updated_at', 'DESC');
    }

    // Select2 keyword search
    public function scopeKeywordBy($query, $column)
    {
        return $query->when(
            $keyword = request()->post('keyword'),
            function ($q) use ($column, $keyword) {
                $q->whereLike($column, $keyword);
            }
        );
    }
    
    // Saving
    public function saveByFill($data)
    {
        if (method_exists('data', 'all')) {
            $data = $data->all();
        }
        $this->fill($data);
        $this->save();
    }
}
