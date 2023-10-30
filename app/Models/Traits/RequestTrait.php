<?php

namespace App\Models\Traits;

use Illuminate\Support\Str;

trait RequestTrait
{
    public function scopeByRequest($query)
    {
        $query = $query
            ->hasByRequest()
            ->orderByRequest()
            ->rangeByRequest()
            ->selectByRequest()
            ->withByRequest()
            ->whereByRequest()
            ->whereHasByRequest();
        // ->withQueryString();
        return $query;
    }

    public function scopeHasByRequest($query)
    {
        $request = request();
        if ($has = $request->get('has')) {
            $query = $query
                ->has(
                    explode(',', $has)
                );
        }

        return $query;
    }
    public function scopeOrderByRequest($query)
    {
        $request = request();
        if ($order = $request->get('order', null)) {
            foreach ($order as $item) {
                $query = $query->orderBy($item['column'], isset($item['dir']) ? $item['dir'] : 'asc');
            }
        }

        return $query;
    }

    public function scopePaginateByRequest($query)
    {
        $request = request();
        return $query
            ->byRequest()
            ->paginate(
                $request->get('per_page', 10),
                ['*'],
                'page',
                $request->get('page', 1)
            );
    }

    public function scopeRangeByRequest($query)
    {
        $request = request();
        if ($range = $request->get('range', null)) {
            foreach ($range as $item) {
                if (!isset($item['column'])) {
                    continue;
                }
                if (isset($item['start'])) {
                    $query = $query->where($item['column'], '>=', $item['start']);
                }
                if (isset($item['end'])) {
                    $query = $query->where($item['column'], '<=', $item['end']);
                }
            }
        }

        return $query;
    }

    public function scopeSelectByRequest($query)
    {
        $request = request();
        if ($select = $request->get('select')) {
            $query = $query
                ->select(
                    explode(',', $select)
                );
        }

        return $query;
    }

    public function scopeWithByRequest($query)
    {
        $request = request();
        if ($with = $request->get('with')) {
            $query = $query
                ->with(
                    array_filter(explode(',', $with))
                );
        }

        return $query;
    }

    public function scopeWithWhereHasByRequest($query)
    {
        $request = request();
        if ($with_where_has = $request->get('with_where_has')) {
            $query = $query
                ->withWhereHas(
                    explode(',', $with_where_has)
                );
        }

        return $query;
    }

    public function scopeWhereByRequest($query)
    {
        $request = request();
        if ($where = $request->get('where', [])) {
            foreach ($where as $item) {
                if (!isset($item['column'])) {
                    continue;
                }
                $column     = $item['column'];
                $operator   = $item['op'] ?? '=';
                $value      = $item['value'] ?? '';
                $query = $query->where($column, $operator, $value);
            }
        }

        return $query;
    }

    public function scopeWhereHasByRequest($query)
    {
        $request = request();
        if ($where_has = $request->get('where_has')) {
            $query = $query
                ->where_has(
                    explode(',', $where_has)
                );
        }

        return $query;
    }
}
