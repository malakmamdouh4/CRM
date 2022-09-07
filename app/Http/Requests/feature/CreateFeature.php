<?php

namespace App\Http\Requests\feature;

use Illuminate\Foundation\Http\FormRequest;

class CreateFeature extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'image' => 'nullable',
            'title' => 'required',
            'description' => 'nullable',
            'feature' => 'nullable'
        ];
    }
}
