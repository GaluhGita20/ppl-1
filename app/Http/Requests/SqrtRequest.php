<?php

namespace App\Http\Requests;

use App\Http\Requests\FormRequest;

class SqrtRequest extends FormRequest
{
    public function rules()
    {
        $rules = [
            'input' => 'required|numeric|gte:0',
        ];
        return $rules;
    }

    public function attributes()
    {
        $attributes = [
            'category' => __('Kategori'),
            'object_id' => __('Objek Audit'),
            'aspect_id' => __('Aspek Audit'),
        ];

        return $attributes;
    }
}
